<?php

class robots_uzAction extends BackendAction {

	private $_tbconfig = null;
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('robots_uz');
        $this->_cate_mod = D('items_cate');
		$api_config = M('items_site')->where(array('code' => 'yhxia'))->getField('config');
        $this->_tbconfig = unserialize($api_config);
    }
 
	 public function _before_index() {
        $res = $this->_cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
        $this->assign('cate_list', $cate_list);
        $this->sort = 'ordid ASC,';
        $this->order ='id DESC';
    }

	public function add(){
		if (IS_POST) {
			$name					= $this->_post('name', 'trim');
			$uzhan_id				= $this->_post('uzhan_id', 'trim');
			$uzhanCate				= $this->_post('uzhanCate','trim');
			$cate_id				= $this->_post('cate_id', 'trim');
			$page					= $this->_post('page', 'trim');
			$shop_type				= $this->_post('shop_type', 'trim','all');
			$ems					= $this->_post('ems', 'trim');
			if( !$name||!trim($name) ){
				$this->error('请填写采集器名称');
			}
			if( !$cate_id||!trim($cate_id) ){
				$this->error('请选择商品分类');
			}
			$data['name'] = $name;
			$data['uzhan_id'] = $uzhan_id;
			$data['uzhanCate'] = $uzhanCate;
			$data['cate_id'] = $cate_id;
			$data['page'] = $page;
			$data['shop_type'] = $shop_type;
			$data['ems'] = $ems;

			$this->_mod->create($data);
			$item_id = $this->_mod->add();
			$this->success('添加成功！');
		}
	}

	 public function edit() {
        if (IS_POST) {
			$id			= $this->_post('id', 'trim');
			$name					= $this->_post('name', 'trim');
			$uzhan_id				= $this->_post('uzhan_id', 'trim');
			$uzhanCate				= $this->_post('uzhanCate','trim');
			$cate_id				= $this->_post('cate_id', 'trim');
			$page					= $this->_post('page', 'trim');
			$shop_type				= $this->_post('shop_type', 'trim','all');
			$ems					= $this->_post('ems', 'trim');

			if( !$name||!trim($name) ){
				$this->error('请填写采集器名称');
			}
			if( !$cate_id||!trim($cate_id) ){
				$this->error('请选择商品分类');
			}

			$data['name'] = $name;
			$data['uzhan_id'] = $uzhan_id;
			$data['uzhanCate'] = $uzhanCate;
			$data['cate_id'] = $cate_id;
			$data['page'] = $page;
			$data['shop_type'] = $shop_type;
			$data['ems'] = $ems;
 
            $this->_mod->where(array('id'=>$id))->save($data);
            $this->success(L('operation_success'));
        } else {
            $id = $this->_get('id','intval');
            $item = $this->_mod->where(array('id'=>$id))->find();
            $spid = $this->_cate_mod->where(array('id'=>$item['cate_id']))->getField('spid');
            if( $spid==0 ){
                $spid = $item['cate_id'];
            }else{
                $spid .= $item['cate_id'];
            }
            $this->assign('selected_ids',$spid); //分类选中
            $this->assign('info', $item);
            $orig_list = M('items_orig')->select();
            $this->assign('orig_list', $orig_list);
			if (!function_exists("curl_getinfo")) {
				$this->error(L('curl_not_open'));
			}
            $this->display();
        }
    }


	public function add_do() {
        if (!function_exists("curl_getinfo")) {
            $this->error(L('curl_not_open'));
        }
        $this->display();
	}

	public function collect(){
		$id	= I('id','','intval');
		$auto	= I('auto',0,'intval');
		$p		= I('p',1,'intval');
		if($auto){
			if(!$this->_tbconfig['app_key']){$this->ajaxReturn(0, '请设置开放平台appkey');}
			$rid	= I('rid',0,'intval');
			if(false === F('uz_collect_time')){
				F('uz_collect_time', time());
			}
			if(!$rid){
				$where['status'] = 1;
				$uz_robots = M('robots_uz')->where($where)->order('ordid asc')->select();
				F('uz_robots', $uz_robots);
				$rid = 0;
			}
			$uz_robots = F('uz_robots');
			$date = $uz_robots[$rid];
			if(!$date){
				F('uz_totalcoll', NULL);
				F('uz_collect_time', NULL);
				$this->ajaxReturn(0, '一键全自动采集U站已经完成！请返回，谢谢');
			}
			
			if ($p > $date['page']) {
				$p = 1;
				$rid = $rid+1;
				$date = $uz_robots[$rid];
				if(!$date){
					F('uz_totalcoll', NULL);
					F('uz_collect_time', NULL);
					$this->ajaxReturn(0, '一键全自动采集U站已经完成！请返回，谢谢');
				}
			}
			$np = $p+1;
			$result_data = $this->api_collect($date,$p);
			$this->assign('result_data', $result_data);
			$msg['title'] = '一键全自动采集';
			$msg['np'] = $np;
			$msg['rid'] = $rid;
			$this->assign('date',$date);
			$this->assign('robots_count',count($uz_robots));
			$this->assign('rids',$rid+1);
			$resp = $this->fetch('auto_collect');
			$this->ajaxReturn(1,$msg,$resp);
		}else{
			$date = M('robots_uz')->where(array('id'=>$id))->find();
		}
		if($date){ 
				if(!$this->_tbconfig['app_key']){$this->ajaxReturn(0, '请设置appkey');}
				if ($p > $date['page']) {
					F('uz_totalcoll', NULL);
					$this->ajaxReturn(0, '已经采集完成'.$date['page'].'页！请返回，谢谢');
				}
				$result_data = $this->api_collect($date,$p);
				$this->assign('result_data', $result_data);
				$resp = $this->fetch('collect');
				$this->ajaxReturn(1, '', $resp);
			 
		}else{
			$this->ajaxReturn(0, 'error');
		}
	}


	public function api_collect($date,$p){
		if (false === $uz_totalcoll = F('uz_totalcoll')) {
			$uz_totalcoll = 0;
		}
		if (false === $uz_collect_time = F('uz_collect_time')) {
			$uz_collect_time = time();
			F('uz_collect_time', time());
		}
		$map['uid']			= $date['uzhan_id'];								//关键词
		$map['uzhanCate']	= $date['uzhanCate'];								//api分类ID
		$map['cate_id']		= $date['cate_id'];									//入库分类ID
		$map['shop_type']	= $date['shop_type'];	

		$result							= $this->_get_list($map, $p);
		$taobaoke_item_list				= $result['item_list'];
		$totalnum						= $result['count'];
		$taobaoke_item_list && F('taobaoke_item_list', $taobaoke_item_list);
		$coll=0;
		$thiscount=4;
		if(is_array($taobaoke_item_list)){
			$msg = '成功！';
		}else{
			$msg = '失败！';
		}
		foreach ($taobaoke_item_list as $key => $val) {
				if($map['shop_type'] == 'B'){
					if($map['shop_type'] == $val['shop_type']){
						/*入库操作START*/
						$coupon_add_time = C('yh_coupon_add_time');
						if($coupon_add_time){
							$times	=	(int)(strtotime(date("Y-m-d H:00:00",time()))+$coupon_add_time*3600);
						}else{
							$times	=	(int)(strtotime(date("Y-m-d H:00:00",time()))+168*86400);
						}
						if(!$val['coupon_end_time']){
							$val['coupon_end_time'] = $times;
						}
						$val['recid'] = 0;
								
						$res= $this->_ajax_yh_publish_insert($val);
						if($res>0){
							$coll++;
							$uz_totalcoll++;
						}
						/*入库操作END*/
					}
				}else{
					/*入库操作START*/
					$coupon_add_time = C('yh_coupon_add_time');
					if($coupon_add_time){
						$times	=	(int)(strtotime(date("Y-m-d H:00:00",time()))+$coupon_add_time*3600);
					}else{
						$times	=	(int)(strtotime(date("Y-m-d H:00:00",time()))+168*86400);
					}
					if(!$val['coupon_end_time']){
						$val['coupon_end_time'] = $times;
					}
					$val['recid'] = 0;
					$res= $this->_ajax_yh_publish_insert($val);
					if($res>0){
						$coll++;
						$uz_totalcoll++;
					}
					/*入库操作END*/
				}
			$thiscount++;	  
		}
		F('uz_totalcoll',$uz_totalcoll);
		$result_data['p']			= $p;
		$result_data['msg']			= $msg;
		$result_data['coll']		= $coll;
		$result_data['totalcoll']	= $uz_totalcoll;
		$result_data['totalnum']	= $totalnum;
		$result_data['thiscount']	= $thiscount;
		$result_data['times']		= lefttime(time()-$uz_collect_time);
		return $result_data;
	}

  
 
	private function _ajax_yh_publish_insert($item) {
        $result = D('items')->ajax_yh_publish($item);
        return $result;
    }

	public function getUzCateList(){
		$uid = I("uzhan_id", "trim" );
		$item_cate = $this->_get_uzcatelist($uid);
		 if ($item_cate) {
            $this->ajaxReturn(1, '', $item_cate);
        } else {
            $this->ajaxReturn(0);
        }
	}

	private function _get_uzcatelist($uid) {
        $tb_top = $this->_get_tb_top();
        $req = $tb_top->load_api('YhxiaUzCateListGetRequest');
        $req->setFields("id,name");
		$req->setTime(date("Y-m-d"));
		$req->setUid($uid);
        $resp = $tb_top->execute($req);
        $res_cats = (array) $resp->uz_catelist;
        return $res_cats;
    }

	public function getuzlist(){
		$item_cate = $this->_get_uzlist();
		 if ($item_cate) {
            $this->ajaxReturn(1, '', $item_cate);
        } else {
            $this->ajaxReturn(0);
        }
	}

	private function _get_uzlist() {
        $tb_top = $this->_get_tb_top();
        $req = $tb_top->load_api('YhxiaUzListsGetRequest');
        $req->setFields("id,name,url");
		$req->setTime(date("Y-m-d"));
        $resp = $tb_top->execute($req);
        $res_cats = (array) $resp->uz_lists;
        return $res_cats;
    }

    /**
     * 获取商品列表
     * 返回商品列表和总数
     */
    private function _get_list($map, $p) {
        $tb_top = $this->_get_tb_top();
        $req = $tb_top->load_api('YhxiaUzItemsCouponGetRequest');
        $req->setFields('num_iid,title,pic_url,price,coupon_price,coupon_rate,shop_type');
        $req->setPageNo($p);
		$req->setTime(date("Y-m-d"));
        $map['uid'] && $req->setUid($map['uid']); //关键词
        $map['uzhanCate'] && $req->setCateid($map['uzhanCate']); //分类
        $resp = (array)$tb_top->execute($req);
        $count = $resp['total_results'];
        //列表内容
        $iids = array();
        $resp_items = objtoarr($resp['itemlists']);
        $taobaoke_item_list = array();
        foreach ($resp_items  as $val) {
            $val = (array) $val;
			$val['cate_id']=$map['cate_id'];
            $taobaoke_item_list[$val['num_iid']] = $val;
        }
        //返回
        return array(
            'count' => intval($count),
            'item_list' => $taobaoke_item_list,
        );
    }

    private function _get_tbcats($cid = 0) {
        $tb_top = $this->_get_tb_top();
        $req = $tb_top->load_api('ItemcatsGetRequest');
        $req->setFields("cid,parent_cid,name,is_parent");
        $req->setParentCid($cid);
		$req->setTime(date("Y-m-d"));
        $resp = $tb_top->execute($req);
        $res_cats = (array) $resp->item_cats;
        $item_cate = array();
        foreach ($res_cats['item_cat'] as $val) {
            $val = (array) $val;
            $item_cate[] = $val;
        }
        return $item_cate;
    }

    private function _get_tb_top() {
        vendor('Yhxia.TopClient');
        vendor('Yhxia.RequestCheckUtil');
        vendor('Yhxia.Logger');
        $tb_top = new TopClient;
        $tb_top->appkey = $this->_tbconfig['app_key'];
        $tb_top->secretKey = $this->_tbconfig['app_secret'];
        return $tb_top;
    }

    public function item_check(){
        $this->display();
    }
 
}