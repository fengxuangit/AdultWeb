<?php

class robotsAction extends BackendAction {

	private $_tbconfig = null;
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('robots');
        $this->_cate_mod = D('items_cate');
		$api_config = M('items_site')->where(array('code' => 'taobao'))->getField('config');
        $this->_tbconfig = unserialize($api_config);
    }	
 
	 public function _before_index() {
        $res = $this->_cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
			$where['status']			=	1;
			$where['http_mod'] 			=	0;
			$robots_collect_data['rid']	=	1;
			$robots_collect_data['p']	=	1;
			$robots_collect_data['last_time'] = 0;
			$robots = M('robots')->where($where)->order('ordid asc')->select();
			for($i=0;$i<count($robots);$i++){
				if($robots[$i]['last_time'] >= $robots_collect_data['last_time'] ){
					$robots_collect_data['last_time']=$robots[$i]['last_time'];
					$robots_collect_data['rid']= $i;
					$robots_collect_data['p'] = $robots[$i][last_page];
				}
			}
			$this->assign('robots_collect_data', $robots_collect_data);
        $this->assign('cate_list', $cate_list);
        $this->sort = 'ordid ASC,';
        $this->order ='last_time DESC';
    }

	public function add(){
		if (IS_POST) {
			$name					= $this->_post('name', 'trim');
			$http_mode				= $this->_post('http_mode', 'trim');
			$cate_id				= $this->_post('cate_id', 'trim');
			$keyword				= $this->_post('keyword', 'trim');
			$page					= $this->_post('page', 'trim');
			$sort					= $this->_post('sort', 'trim');
			$start_commissionRate	= $this->_post('start_commissionRate', 'trim');
			$end_commissionRate		= $this->_post('end_commissionRate', 'trim');
			$start_price			= $this->_post('start_price', 'trim');
			$end_price				= $this->_post('end_price', 'trim');
			$start_volume			= $this->_post('start_volume', 'trim');
			$end_volume				= $this->_post('end_volume', 'trim');
			$ems					= $this->_post('ems', 'trim');
			$recid					= $this->_post('recid', 'trim');
			$shop_type				= $this->_post('shop_type', 'trim','all');
			if( !$name||!trim($name) ){
				$this->error('请填写采集器名称');
			}
			if( !$cate_id||!trim($cate_id) ){
				$this->error('请选择商品分类');
			}
			if (!$keyword) {
				$this->error('请填写关键词');
			}
			if($start_commissionRate > $end_commissionRate){
				$this->error('起始佣金不能高于最高佣金');
			}
			if($start_coupon_rate > $end_coupon_rate){
				$this->error('最低折扣不能高于最高折扣');
			}
			if($start_volume > $end_volume){
				$this->error('最低销量不能高于最高销量');
			}

			if($start_commissionRate<1){$start_commissionRate= 100;}
			if($start_price<1){$start_price= 1;}
			if($start_volume<1){$start_volume= 10;}
			if($end_commissionRate < 1 or $end_commissionRate > 9999){$end_commissionRate= 9999;}
			if($end_price < 1 or $end_price > 99999){$end_price= 99999;}
			if($end_volume < 1 or $end_volume > 99999){$end_volume= 99999;}
			
			$data['name'] = $name;
			$data['http_mode'] = $http_mode;
			$data['cate_id'] = $cate_id;
			$data['keyword'] = $keyword;
			$data['page'] = $page;
			$data['sort'] = $sort;
			$data['start_commissionRate'] = $start_commissionRate;
			$data['end_commissionRate'] = $end_commissionRate;
			$data['start_price'] = $start_price;
			$data['end_price'] = $end_price;
			$data['start_volume'] = $start_volume;
			$data['end_volume'] = $end_volume;
			$data['ems'] = $ems;
			$data['recid'] = $recid;
			$data['shop_type'] = $shop_type;

			$this->_mod->create($data);
			$item_id = $this->_mod->add();
			$this->success('添加成功！');
		}
	}

	 public function edit() {
        if (IS_POST) {
			$id			= $this->_post('id', 'trim');
			$name					= $this->_post('name', 'trim');
			$http_mode				= $this->_post('http_mode', 'trim');
			$cate_id				= $this->_post('cate_id', 'trim');
			$keyword				= $this->_post('keyword', 'trim');
			$page					= $this->_post('page', 'trim');
			$sort					= $this->_post('sort', 'trim');
			$start_commissionRate	= $this->_post('start_commissionRate', 'trim');
			$end_commissionRate		= $this->_post('end_commissionRate', 'trim');
			$start_price			= $this->_post('start_price', 'trim');
			$end_price				= $this->_post('end_price', 'trim');
			$start_volume			= $this->_post('start_volume', 'trim');
			$end_volume				= $this->_post('end_volume', 'trim');
			$ems					= $this->_post('ems', 'trim');
			$recid					= $this->_post('recid', 'trim');
			$shop_type				= $this->_post('shop_type', 'trim','all');
			if( !$name||!trim($name) ){
				$this->error('请填写采集器名称');
			}
			if( !$cate_id||!trim($cate_id) ){
				$this->error('请选择商品分类');
			}
			if (!$keyword) {
				$this->error('请填写关键词');
			}
			if($start_commissionRate > $end_commissionRate){
				$this->error('起始佣金不能高于最高佣金');
			}
			if($start_coupon_rate > $end_coupon_rate){
				$this->error('最低折扣不能高于最高折扣');
			}
			if($start_volume > $end_volume){
				$this->error('最低销量不能高于最高销量');
			}

			if($start_commissionRate<1){$start_commissionRate= 100;}
			if($start_price<1){$start_price= 1;}
			if($start_volume<1){$start_volume= 10;}
			if($end_commissionRate < 1 or $end_commissionRate > 9999){$end_commissionRate= 9999;}
			if($end_price < 1 or $end_price > 99999){$end_price= 99999;}
			if($end_volume < 1 or $end_volume > 99999){$end_volume= 99999;}
			
			$data['name'] = $name;
			$data['http_mode'] = $http_mode;
			$data['cate_id'] = $cate_id;
			$data['keyword'] = $keyword;
			$data['page'] = $page;
			$data['sort'] = $sort;
			$data['start_commissionRate'] = $start_commissionRate;
			$data['end_commissionRate'] = $end_commissionRate;
			$data['start_price'] = $start_price;
			$data['end_price'] = $end_price;
			$data['start_volume'] = $start_volume;
			$data['end_volume'] = $end_volume;
			$data['ems'] = $ems;
			$data['recid'] = $recid;
			$data['shop_type'] = $shop_type;
 
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
            //来源
            $orig_list = M('items_orig')->select();
            $this->assign('orig_list', $orig_list);
			if (!function_exists("curl_getinfo")) {
				$this->error(L('curl_not_open'));
			}
			//获取淘宝商品分类API不可用
			// $items_cate = $this->_get_tbcats();
			// $this->assign('items_cate', $items_cate);
            $this->display();
        }
    }


	public function add_do() {
		//判断CURL
        if (!function_exists("curl_getinfo")) {
            $this->error(L('curl_not_open'));
        }
        //获取淘宝商品分类
        // $items_cate = $this->_get_tbcats();
        // $this->assign('items_cate', $items_cate);
        $this->display();
	}

	public function collect(){
		$id	= I('id','','intval');
		$auto	= I('auto',0,'intval');
		$p		= I('p',1,'intval');
		if($auto){
			
			$rid	= I('rid',0,'intval');
			if(false === F('robots_time')){
				F('robots_time', time());
			}
			if(!$rid){
				$where['status'] = 1;
				$where['http_mod'] = 0;
				$robots = M('robots')->where($where)->order('ordid asc')->select();
				F('robots', $robots);
				$rid = 0;
				
			}
			$robots = F('robots');
			$date = $robots[$rid];
			if(!$date){
				F('totalcoll', NULL);
				F('robots_time', NULL);
				$this->ajaxReturn(0, '一键全自动已经采集完成！请返回，谢谢');
			}
			
			if ($p > $date['page']) {
				$p = 1;
				$rid = $rid+1;
				$date = $robots[$rid];
				if(!$date){
					F('totalcoll', NULL);
					F('robots_time', NULL);
					$this->ajaxReturn(0, '一键全自动已经采集完成！请返回，谢谢');
				}
			}
			$np = $p+1;

				//if(!$this->_tbconfig['app_key']){$this->ajaxReturn(0, '请设置appkey');}
				$result_data = $this->api_collect($date,$p);
			
			$this->assign('result_data', $result_data);
			$msg['title'] = '一键全自动采集';
			$msg['np'] = $np;
			$msg['rid'] = $rid;
			$this->assign('date',$date);
			$this->assign('robots_count',count($robots));
			$this->assign('rids',$rid+1);
			$resp = $this->fetch('auto_collect');
			$this->ajaxReturn(1,$msg,$resp);
		}else{
			$date = M('robots')->where(array('id'=>$id))->find();
			F('robot_setting', $date);
		}
		
		if($date){
			if($date['http_mode'] == '0'){
				//if(!$this->_tbconfig['app_key']){$this->ajaxReturn(0, '请设置appkey');}
				if ($p > $date['page']) {
					F('totalcoll', NULL);
					$this->ajaxReturn(0, '已经采集完成'.$date['page'].'页！请返回，谢谢');
				}
				$result_data = $this->api_collect($date,$p);
				$this->assign('result_data', $result_data);
				$resp = $this->fetch('collect');
				$this->ajaxReturn(1, '', $resp);
			}else{
				if ($p > $date['page']) {
					F('totalcoll', NULL);
					$this->ajaxReturn(0, '已经采集完成'.$date['page'].'页！请返回，谢谢');
				}
				$result_data = $this->taobao_collect($date,$p);
				$this->assign('result_data', $result_data);
				$resp = $this->fetch('collect');
				$this->ajaxReturn(1, '', $resp);
			}
		}else{
			$this->ajaxReturn(0, 'error');
		}
	}

	public function api_collect($date,$p){
		M('robots')->where(array('id'=>$date['id']))->save(array('last_page'=>$p,'last_time'=>time()));
		if (false === $totalcoll = F('totalcoll')) {
			$totalcoll = 0;
		}
		if (false === $robots_time = F('robots_time')) {
			$robots_time = time();
			F('robots_time', time());
		}
		//$map['start_credit']				= 			$date['start_credit'];					//卖家信用下限
		//$map['end_credit']				= 			$date['end_credit'];					//卖家信用上限
		$map['keyword']						= 			str_replace(' ','',$date['keyword']);	//关键词
		$map['cate_id']						= 			$date['cate_id'];						//入库分类ID
		$map['start_commissionRate']		= 			$date['start_commissionRate'];			//佣金比率下限
		$map['end_commissionRate']			= 			$date['end_commissionRate'];			//佣金比率上限
		$map['start_price']					= 			$date['start_price'];					//价格下限
		$map['end_price']					= 			$date['end_price'];						//价格上限
		$map['p']							= 			$p;										//采集第几页
		$map['sort']						= 			$date['sort'];							//排序
		if($date['shop_type']=='B'){
			$map['shop_type']				= 			'true';									//是否天猫商品
		}else{
			$map['shop_type']				= 			'false';								//是否天猫商品
		}
		foreach($map as $key => $value){
			$url1 .= '&map['.$key.']'.'='.$value;
		}
		$youhun1=C('yh_site_secret');$youhun2=C('yh_dingdan');$youhun3=C('yh_site_url');
		$url = 'http://open.yhtbk.cc/?r=robots&site_secret='.$youhun1.'&dingdan='.$youhun2.'&url='.$youhun3.$url1;
		$source = file_get_contents($url);
		$json = json_decode($source, true);
		$taobaoke_item_list				= $json['result']['item_list'];
		$totalnum						= $json['result']['item_number'];
		if($json['state'] != 'yes'){$this->ajaxReturn(0, $json['state']);}
		if(!$json['result']['item_list'] and $json['result']['url']){
			$source = file_get_contents($json['result']['url']);
			$json = json_decode($source, true);
			$taobaoke_item_list				= $json['tbk_item_get_response']['results']['n_tbk_item'];
			$totalnum						= count($taobaoke_item_list);
		}
		
		//if(!$source){
		//	$curl = curl_init();
		//	curl_setopt($curl, CURLOPT_URL,$url);
		//	curl_setopt($curl, CURLOPT_TIMEOUT,25);
		//	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		//	$source = curl_exec($curl);
		//	curl_close($curl);
		//echo $source; 
		//}
		$map['start_volume']			= $date['start_volume'];			//销量下限
		$map['end_volume']				= $date['end_volume'];				//销量上限
		$map['recid']					= $date['recid'];					//是否更新分类
		$taobaoke_item_list && F('taobaoke_item_list', $taobaoke_item_list);
		$coll=0;
		$thiscount=4;
		if(is_array($taobaoke_item_list)){
			$msg = '成功！';
		}else{
			$msg = '失败！';
		}
		foreach ($taobaoke_item_list as $key => $val) {
			if($map['start_volume'] <= $val['volume'] &&  $val['volume'] <= $map['end_volume']){
				if($val['zk_final_price']){
					if ($val['user_type']==1){$val['shop_type']='B';}else{$val['shop_type']='C';}
					$val['price']=$val['reserve_price'];
					$val['coupon_price']=$val['zk_final_price'];
					$val['sellerId']=$val['seller_id'];
					$val['cate_id']=$map['cate_id'];
					$val['pic_url']=$val['pict_url'];
					$val['coupon_rate']= number_format(($val['coupon_price'] / $val['price'] * 10000), 0, '.', '');
					unset($val['pict_url']);unset($val['user_type']);unset($val['reserve_price']);unset($val['zk_final_price']);unset($val['seller_id']);
				}
				$val['ems']=1;
				if($map['shop_type'] == 'B'){
					if($map['shop_type'] == $val['shop_type']){
						/*入库操作START*/
						$coupon_add_time = C('yh_coupon_add_time');
						if($coupon_add_time){
							$times	=	(int)(time()+$coupon_add_time*3600);
						}else{
							$times	=	(int)(time()+72*86400);
						}
						$val['coupon_start_time'] = time();
						$val['coupon_end_time'] = $times;
						$val['recid'] = $map['recid'];
								
						$res= $this->_ajax_yh_publish_insert($val);
						if($res>0){
							$coll++;
							$totalcoll++;
						}
						/*入库操作END*/
					}
				}else{
					/*入库操作START*/
					$coupon_add_time = C('yh_coupon_add_time');
					if($coupon_add_time){
						$times	=	(int)(time()+$coupon_add_time*3600);
					}else{
						$times	=	(int)(time()+72*86400);
					}
					$val['coupon_start_time'] = time();
					$val['coupon_end_time'] = $times;
					$val['recid'] = $map['recid'];
					$res= $this->_ajax_yh_publish_insert($val);
					if($res>0){
						$coll++;
						$totalcoll++;
					}
					/*入库操作END*/
				}
			}
			$thiscount++;	  
		}
		F('totalcoll',$totalcoll);
		$result_data['p']			= $p;
		$result_data['msg']			= $msg;
		$result_data['coll']		= $coll;
		$result_data['totalcoll']	= $totalcoll;
		$result_data['totalnum']	= $totalnum;
		$result_data['thiscount']	= $thiscount;
		$result_data['times']		= lefttime(time()-$robots_time);
		return $result_data;
	}

	public function robot(){
		$id		= $this->_get('id', 'trim');
		$date = M('robots')->where(array('id'=>$id))->find();
		if($date){
			$map['keyword'] = $date['keyword'];									//关键词
            $map['cid'] = $date['cid'];											//api分类ID
			$map['cate_id'] = $date['cate_id'];									//入库分类ID
            $p = $this->_get('p', 'intval', 1);
            if ($p > 100) {
                $this->redirect('robots/index');
            }
            $map['start_volume']			= $date['start_volume'];			//销量下限
            $map['end_volume']				= $date['end_volume'];				//销量上限
			$map['start_price']				= $date['start_price'];				//价格下限
            $map['end_price']				= $date['end_price'];				//价格上限
            $map['start_coupon_rate']		= $date['start_coupon_rate'];		//折扣最低比率
            $map['end_coupon_rate']			= $date['end_coupon_rate'];			//折扣最高比率
            $map['start_credit']			= $date['start_credit'];			//卖家信用下限
            $map['end_credit']				= $date['end_credit'];				//卖家信用上限
            $map['shop_type']				= $date['shop_type'];				//是否天猫商品
            $map['sort']					= $date['sort'];					//排序方法
			$result							= $this->_get_list($map, $p);
            $pager = new Page($result['count'], 40);
            $page = $pager->show();
            $this->assign("page", $page);
			$this->assign("p", $p);
			$this->assign("count", $result['count']);
            $taobaoke_item_list = $result['item_list'];
			$taobaoke_item_list && F('taobaoke_item_list', $taobaoke_item_list);
			$returnlist=array();
			foreach ($taobaoke_item_list as $key => $val) {
					  $returnlist[] = $this->_publish_insert($val);
			}
			$this->assign('list', $returnlist);                               
			$this->assign('list_table', true);
			$lv =$result['count']/40;
			if($lv>$p){
				$nexturl = U('robots/robot',array('id'=>$id,'p'=>$p));
				$this->assign('nexturl', $nexturl);
			}
			$this->display();
		}
	}

    private function _publish_insert($item) {
        $item['title'] = strip_tags($item['title']);
        $item['click_url'] = Url::replace($item['click_url'], array('spm' => '2014.' . $this->_tbconfig['app_key'] . '.1.0'));
        $result = D('items')->publish($item);
        return $result;
    }

	private function _ajax_publish_insert($item) {
        $result = D('items')->ajax_publish($item);
        return $result;
    }

	private function _ajax_yh_publish_insert($item) {
        $result = D('items')->ajax_yh_publish($item);
        return $result;
    }

	private function _ajax_tb_publish_insert($item) {
        $item['title'] = strip_tags($item['title']);
        $result = D('items')->ajax_tb_publish($item);
        return $result;
    }

	 public function ajax_get_tbcats() {
        $cid = $this->_get('cid', 'intval', 0);
        $item_cate = $this->_get_tbcats($cid);
        if ($item_cate) {
            $this->ajaxReturn(1, '', $item_cate);
        } else {
            $this->ajaxReturn(0);
        }
    }

    /**
     * 获取商品列表
     * 返回商品列表和总数
     */
    private function _get_list($map, $p) {
        $tb_top = $this->_get_tb_top();
        $req = $tb_top->load_api('YhxiaItemsCouponGetRequest');
        $req->setFields('num_iid,title,nick,pic_url,price,click_url,seller_credit_score,item_location,volume,coupon_price,coupon_rate,coupon_end_time,shop_type');
        $req->setPageNo($p);
		$req->setTime(date("Y-m-d"));
        $map['keyword'] && $req->setKeyword($map['keyword']); //关键词
        $map['cid'] && $req->setCid($map['cid']); //分类
        $map['start_price'] && $req->setStartPrice($map['start_price']);
        $map['end_price'] && $req->setEndPrice($map['end_price']);
        $map['shop_type'] && $req->setShopType($map['shop_type']);
        $map['sort'] && $req->setSort($map['sort']);
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
        //分类信息
        $res = $this->_cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
        $this->assign('cate_list', $cate_list);
        //商品信息
        //$map = $this->_search();
        $map=array();
        $map['pass'] = 0;
		$map['status'] = 'sellout';
        
        //分页
        $count = M('items')->where($map)->count('id');
        $pager = new Page($count, 20);
        $select = M('items')->where($map)->order('id DESC');
        $select->limit($pager->firstRow.','.$pager->listRows);
        $page = $pager->show();
        $this->assign ("page", $page);
        $listarr = $select->select();
        $lists = array();
        foreach($listarr as $key=>$val){
			$lists[$key]			= $val;
		}

        $this->assign('list', $lists);
        $this->display();
    }

    public function item_checks(){
		$this->item_mod = M( "items" );
		$p = I('p',1,'intval');
		$start = I('start','0-0-0','trim');
        $end   = I('end','0-0-0','trim');
        $step  = I('step',1,'intval');
        $sec   = I('sec',0,'intval');
        if ($start=='') {
        	$start='0-0-0';
        }
        if ($end=='') {
        	$end = '0-0-0';
        }
        if ($sec=='') {
        	$sec=0;
        }
        $start_temp = explode('-', $start);
        $end_temp = explode('-', $end);
        $startd = mktime(0,0,0,$start_temp[1],$start_temp[2],$start_temp[0]);
        $endd  = mktime(0,0,0,$end_temp[1],$end_temp[2],$end_temp[0]);
        if (($start!='0-0-0')&&($end!='0-0-0')) {
            $where['coupon_start_time'] = array(array("elt",$endd),array('egt',$startd));
        }elseif (($start!='0-0-0')&&($end=='0-0-0')) {
        	$where['coupon_start_time'] = array('egt',$startd);
        }elseif (($start=='0-0-0')&&($end!='0-0-0')) {
        	$where['coupon_start_time'] = array("elt",$endd);
        }
		if (false === $itemcheckdata = F('itemcheck')) {
			$itemcheckdata['this_good'] = 0;
			$itemcheckdata['this_bad'] = 0;
			$itemcheckdata['that_good'] = 0;
			$itemcheckdata['that_bad'] = 0;
			$itemcheckdata['total'] = 0;
			$itemcheckdata['not_total'] = 0;
			F('itemcheck', $itemcheckdata);
		}
		if(false === $bad_item = F('bad_item')){
            $bad_item = array();
            F('bad_item', $bad_item);
		}
		$itemcheckdata['this_good'] = 0;
		$itemcheckdata['this_bad'] = 0;        

       if($sec==0){
	    $where['pass'] = "1";
			$page_size = $step;
			$startp = ($p-1)*$page_size;
			$startp = $startp-$itemcheckdata['that_bad'];	
        }
		if ($sec==1) {
		    $where['pass'] = '0';
			$page_size = $step;
			$startp = ($p-1)*$page_size;
			$startp = $startp-$itemcheckdata['that_good'];
		}

		$CheckItemCount = $this->item_mod->where($where)->count("id");
		$itemcheckdata['not_total'] = $CheckItemCount ;
        $order = "add_time asc ";
        $items_list = $this->item_mod->field('num_iid,shop_type')->where($where)->order( $order )->limit($startp,$page_size)->select();
	
        if($items_list){

		}else{
			F('itemcheck', false);
			$this->ajaxReturn(0, '更新完成，谢谢！');
		}
		
		if ($step==1) {
			//单线程判断
			foreach ($items_list as $k => $v) {
				 if ($v['shop_type']=='B') {
				     	$url = 'http://detail.m.tmall.com/item.htm?id='.$v['num_iid'];
				     	$check = items_check($url,'B');
				     	if ($check=='sale') {
					     	$itemcheckdata['this_good'] = $itemcheckdata['this_good']+1;
					    	$itemcheckdata['that_good'] = $itemcheckdata['that_good']+1;
					    	if ($sec==1) {
					           $this->item_mod->where($v)->save(array('pass'=>1,'status'=>'underway'));
					    	}			     		
				     	}elseif ($check=='unsale') {
				     		$bad_item = F('bad_item');
				     		$bad_item[]=$v['num_iid'];
				     		F('bad_item',$bad_item);
						 	$itemcheckdata['this_bad'] = $itemcheckdata['this_bad']+1;
						 	$itemcheckdata['that_bad'] = $itemcheckdata['that_bad']+1;
						 	if ($sec==0) {
						 	$this->item_mod->where($v)->save(array('pass'=>0,'status'=>'sellout'));	
						 	}
				     	}
				    }elseif ($v['shop_type']=='C') {
				     	$url = 'http://hws.m.taobao.com/cache/wdetail/5.0/?id='.$v['num_iid'];
				     	$check = items_check($url,'C');
				     	if ($check=='sale') {
					     	$itemcheckdata['this_good'] = $itemcheckdata['this_good']+1;
					    	$itemcheckdata['that_good'] = $itemcheckdata['that_good']+1;
	                        if ($sec==1) {
					           $this->item_mod->where($v)->save(array('pass'=>1,'status'=>'underway'));
					    	}
				     	}elseif ($check=='unsale'){
				     		$bad_item = F('bad_item');
				     		$bad_item[]=$v['num_iid'];
				     		F('bad_item',$bad_item);
						 	$itemcheckdata['this_bad'] = $itemcheckdata['this_bad']+1;
						 	$itemcheckdata['that_bad'] = $itemcheckdata['that_bad']+1;
						 	if ($sec==0) {
						 	$this->item_mod->where($v)->save(array('pass'=>0,'status'=>'sellout'));	
						 	}
				     	}
				    }
				    $itemcheckdata['total'] = $itemcheckdata['total']+1;
			}
			//多线程判断			
		}elseif ($step>1) {
	        $temp = array();
	        //根据类型获取内容
		    foreach ($items_list as $k => $v) {
		    	$key = $v['num_iid'];
		    	if ($v['shop_type']=='B') {
					$url = 'http://detail.m.tmall.com/item.htm?id='.$v['num_iid'];
					$temp[$key]['content'] = file_get_contents($url);
					$temp[$key]['type']    = 'B';
				}elseif ($v['shop_type']=='C') {
					$url = 'http://hws.m.taobao.com/cache/wdetail/5.0/?id='.$v['num_iid'];
					$temp[$key]['content'] = file_get_contents($url);
					$temp[$key]['type']    = 'C';
				}
		    }
		    //判断状态
	          $check = items_checks($temp);
	        //根据状态修改数据库
	          foreach ($check as $k => $v) {
	          	if ($v['pass']==0) {
                    $bad_item = F('bad_item');
		     		$bad_item[]=$k;
		     		F('bad_item',$bad_item);
				 	$itemcheckdata['this_bad'] = $itemcheckdata['this_bad']+1;
				 	$itemcheckdata['that_bad'] = $itemcheckdata['that_bad']+1;
				 	if($sec==0){
				 	 $this->item_mod->where(array('num_iid'=>$k))->save($v);	
				 	}
				 	
	          	}elseif ($v['pass']==1) {
      	   			$itemcheckdata['this_good'] = $itemcheckdata['this_good']+1;
			    	$itemcheckdata['that_good'] = $itemcheckdata['that_good']+1; 
				 	if($sec==1){
				 	 $this->item_mod->where(array('num_iid'=>$k))->save($v);	
				 	}
	          	}
	          	$itemcheckdata['total'] = $itemcheckdata['total']+1;
	          }
		}

		F('itemcheck', $itemcheckdata);
		$msg['title'] = '商品检测';
		$msg['p'] = $p+1;
		$msg['end'] = $end;
		$msg['start'] = $start;
		$msg['step']  = $step;
		$this->assign('item', $itemcheckdata);
		$resp = $this->fetch('ajax_itemcheck');
		$this->ajaxReturn(1, $msg, $resp);


    }
   /*采集加强版*/
  public function taobao_collect($date,$p){
		M('robots')->where(array('id'=>$date['id']))->save(array('last_page'=>$p,'last_time'=>time()));
		$s=($p-1)*44;
		$q='';
		$tp= 100;//F('tp');//35732
		if($p>1){
			if ($p > $tp) {
				$this->ajaxReturn(0, '已经采集完成'.$tp.'页！请返回，谢谢');
			}
		}
		if($p==1){
			$totalcoll = 0;
		}else{
			$totalcoll = F('totalcoll');
		}
		if($date['tb_cid']){$q.='&cat='.$date['tb_cid'];}
		if($date['keyword']){$q.='&q='.$date['keyword'];}
		if($date['shop_type'] == 'B'){
						$q.='&tab=mall&isprepay=1';
				}else{
						$q.='&tab=all&apassall=1';
				}		
		if($date['start_price'] && $date['end_price'] && $date['start_price']< $date['end_price'] ){
				$q.='&filter=reserve_price%5B'.$date['start_price'].'%2C'.$date['end_price'].'%5D';
		}
		if($date['sort']){$sorts=explode('|',$date['sort']);
        if($sorts[0]=='volume'){
        $sorts[0]='sale';
        }
        $q.='&sort='.$sorts[0].'-'.$sorts[1];
        }
		$url='http://s.taobao.com/search?'.$q.'&style=grid&fs=0&cps=yes&initiative_id=staobaoz_20140606&promote=0&s='.$s.'#J_relative';			
		$yhxia_https = new yhxia_https();
		$yhxia_https->fetch($url);
		$content = $yhxia_https->results;
		if(!$content){
			$content = file_get_contents($url);
		}
		$content = Newiconv("GBK", "UTF-8", $content); 
		$ck	 = get_word($content,'<li class="home"><a href="http:\/\/www.taobao.com\/">','<\/a><\/li>');
		$pre = L('pre');
		$totalnum=get_word($content,L($pre.'total_start'),L($pre.'total_end'));
		$tp = intval($totalnum/44)+1;
			
		if(preg_match_all(L($pre."listitem"), $content, $matchitem)) {
					//44
					$mtmp = array();
					for($i=0;$i<count($matchitem[0]);$i++){
						$pi=($p-1)*44+$i;
						$msg='折扣不满足。不采集';
						$item=$matchitem[1][$i];
						$titlebar	=get_word($item,L($pre.'titlebar_start'),L($pre.'titlebar_end'));
						$title	=get_word($titlebar,L($pre.'title_start'),L($pre.'title_end'));
						$img	=get_word($item,L($pre.'img_start'),L($pre.'img_end'));
					
						if(!$img){
							$img=get_word($item,L($pre.'imgs_start'),L($pre.'imgs_end'));
							if(!$img){
								$img=get_word($item,L($pre.'imgss_start'),L($pre.'imgss_end'));
							}
						}

						$iid	=get_word($item,L($pre.'iid_start'),L($pre.'iid_end'));


						$price	=get_word($item,L($pre.'price_start'),L($pre.'price_end'));
						if(!$price){
							$price=get_word($item,L($pre.'prices_start'),L($pre.'prices_end'));
						}
						if(!$price){
							$price=get_word($item,L($pre.'pricess_start'),L($pre.'pricess_end'));
						}
						if(!$price){
							$pricebar=get_word($item,L($pre.'pricesssbar_start'),L($pre.'pricesssbar_end'));
							$price=get_word($pricebar,L($pre.'pricesss_start'),L($pre.'pricesss_end'));
						}

						$zkprice=get_word($item,L($pre.'zkprice_start'),L($pre.'zkprice_end'));
						if(!$price){
							$price=$zkprice;
						}
						
						$volume	=get_word($item,L($pre.'volume_start'),L($pre.'volume_end'));						
						$hits	=get_word($item,L($pre.'hits_start'),L($pre.'hits_end'));	
						$nick	=get_word($item,L($pre.'nick_start'),L($pre.'nick_end'));	
                        $nick   =urldecode($nick);						
						$ems	=get_word($item,L($pre.'ems_start'),L($pre.'ems_end'));
						if(!$ems){
							$ems	=get_word($item,L($pre.'emss_start'),L($pre.'emss_end'));
						}
						

						if($ems){
							if($pre=='hk_'){
								if(strpos($ems,'免運費')){$ems='1';}else{$ems='0';}
							}else{
								if(strpos($ems,'免运费')){$ems='1';}else{$ems='0';}
							}
						}else{
							$ems='1';
						}
	
 
						if(!$volume){$volume=0;}
						$zekou = round(($zkprice/$price)*10,1);
						$coupon_add_time = C('yh_coupon_add_time');
				       if($coupon_add_time){
					   $times	=	(int)(time()+$coupon_add_time*3600);
				       }else{
					   $times	=	(int)(time()+72*86400);
				       }
						if(strpos($item,'tmall.com')){
							$itemarray['shop_type']='B';
						}else{
							$itemarray['shop_type']='C';
						}
						
						$volume = trim($volume);
						$volume = str_ireplace('人付款', '', $volume);	
						$price = trim($price);
						$price = str_ireplace('<i>￥</i>', '', $price);						                       
                        $tag_list = d("items")->get_tags_by_title($title);
                        $tags = implode(" ",$tag_list);                        
						$zkprice = trim($zkprice);
						$zkprice = str_ireplace('<i>￥</i>', '', $zkprice);
						$itemarray['title']=$title;
						$itemarray['intro']='强烈推荐：'.$title.'，优惠活动折扣价格：'.$zkprice.'元，已成交：'.$volume.'笔。';
						$itemarray['pic_url']=$img;
						$itemarray['num_iid']=$iid;
						$itemarray['hits']=$hits;
						$itemarray['price']=$price;
						$itemarray['likes']=rand(99, 9999);
						$itemarray['coupon_price']=$zkprice;
						$itemarray['volume']=$volume;
						$itemarray['nick']=$nick;
						$itemarray['tags']=$tags;
						$itemarray['ems']=$ems;
						$itemarray['cate_id']=$date['cate_id'];
						$itemarray['coupon_rate']=$zekou*1000;
						$itemarray['coupon_end_time']=$times;
						$itemarray['coupon_start_time']=time();
						if($title && $img && $iid ){
						$result['item_list'][]=$itemarray;

						}
						//exit(print_r($itemarray));
						
					}
				}else{
					$result['msg']='采集结束！请返回2';
				}
		$taobaoke_item_list = $result['item_list'];
		$taobaoke_item_list && F('taobaoke_item_list', $taobaoke_item_list);
		$coll=0;
		$thiscount=0;
		foreach ($taobaoke_item_list as $key => $val) {
			$res= $this->_ajax_tb_publish_insert($val);
			if($res>0){
				$coll++;
				$totalcoll++;
			} 
			$thiscount++;
		}
		F('totalcoll',$totalcoll);
		$result_data['p']			= $p;
		$result_data['msg']			= $msg;
		$result_data['coll']		= $coll;
		$result_data['totalcoll']	= $totalcoll;
		$result_data['totalnum']	= $totalnum;
		$result_data['thiscount']	= $thiscount;
		return $result_data;
	}
	
}
