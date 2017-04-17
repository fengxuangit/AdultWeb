<?php

class itemAction extends FirstendAction {	
    public function _initialize() {
        parent::_initialize();
		$this->_mod = D('items');
        $this->_cate_mod = D('items_cate');
		$this->assign('nav_curr', 'index');
        //访问者控制
        if (!$this->visitor->is_login && in_array(ACTION_NAME, array('delete', 'comment','delcol','mycol'))) {
            IS_AJAX && $this->ajaxReturn(0, L('login_please'));
            $this->redirect('user/login');
        }
		if(C('yh_site_cache')){
			$file = 'items_site';
			
		}
    }

    /**
     * 商品详细页
     */
    public function index() {
        $id = I('id', '','trim');
        $iid = D('items')->where(array('id'=>$id))->getField('num_iid');
		$iid = $iid+1;
		$this->assign('iid', $iid);
		$item = $this->_mod->where(array('id' => $id))->find();
		$item['class'] = $this->_mod->status($item['status'],$item['coupon_start_time'],$item['coupon_end_time']);
		$txurl = C('yh_site_url').U('item/index',array('id'=>$item['id']));
		$item['txurl'] = urlencode($txurl);		
        $item['zk']    = round(($item['coupon_price']/$item['price'])*10, 2); 					
		$item['iurl']		= C('yh_site_url').'/item/'.$item['id'].'.html';
		$item['jurl']		= C('yh_site_url').'/jump/'.$item['id'].'.html';
		$item['ccid'] = $item['cate_id'];	
			if(isset($item['cate_id'])){
            $item['cname'] = D('items_cate')->where(array('id'=>$item['cate_id']))->getField('name');	
        }

		if(C('yh_item_hit')){
			$hits_data = array('hits'=>array('exp','hits+1'));
			$this->_mod->where(array('id'=>$id))->setField($hits_data);
		}

		$cate_data =F('cate_list');
		$cid = $item["cate_id"];
		$pid = $cate_data[$cid]['pid'];


		$tag_list = D('items')->get_tags_by_title($item['title']);
		$tags = implode(',', $tag_list);

		$this->_config_seo(C('yh_seo_config.item'), array(
            'title' => $item['title'],
            'intro' => $item['intro'],
			'price' => $item['price'],
			'coupon_price' => $item['coupon_price'],
			'tags' => $tags,
            'seo_title' => $item['seo_title'],
            'seo_keywords' => $item['seo_keys'],
            'seo_description' => $item['seo_desc'],
        ));
		
        $item_comment_mod = M('items_comment');
        $pagesize = 8;
		$pager->listRows = 8;
        $map = array('item_id' => $id,'status' => '1');
        $count = $item_comment_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $pager->path = 'comment_list';
        $pager_bar = $pager->fshow();
        $comment_list = $item_comment_mod->where($map)->order('add_time ASC')->limit($pager->firstRow . ',' . $pager->listRows)->select();
		$this->assign('comment_list', $comment_list);
		$this->assign('page_bar', $pager_bar);
		foreach($comment_list as $com){
			foreach($tag_list as $nkeys){
			   if(strpos($com['info'],$nkeys) ){ 			   
				   $url = U('search/index',array('k'=>urlencode($nkeys)));
					 $com['info'] =str_replace($nkeys,"<a href=".$url." target=_blank ><b style=color:red>".$nkeys."</b></a>",$com['info']);      
			   } 
			} 
			$comm[] = $com;
		}
		$counts = $this->_mod->where($where)->count();
        $this->assign('total_item',$counts);
		$this->assign('tags', $tag_list);
		$this->assign('comment_list', $comm);		
		if(false === $cate_list = F('cate_list')) {
			$cate_list = D('items_cate')->cate_cache();
		}


		if(C('yh_site_cache')){
			$file = 'orlike_'.$cid;
			if(false === $orlike = S($file)){
				if($cid){
					$orlike = $this->_mod->where(array('cate_id'=>$cid,'isshow'=>'1','pass'=>'1'))->limit('0,12')->order('id desc')->select();
				}else{
					$orlike = $this->_mod->where(array('isshow'=>'1','pass'=>'1'))->limit('0,12')->order('id desc')->select();
				}
				S($file,$orlike);
			}
		}else{
			if($cid){
				$orlike = $this->_mod->where(array('cate_id'=>$cid,'isshow'=>'1','pass'=>'1'))->limit('0,12')->order('id desc')->select();
			}else{
				$orlike = $this->_mod->where(array('isshow'=>'1','pass'=>'1'))->limit('0,12')->order('id desc')->select();
			}
		}
     
 
		$items = array();
		$pagecount = 0;
		$seller_arr = array();
		$sellers = '';
		foreach($orlike as $key=>$val){
			$items[$key]			= $val;
			$items[$key]['class']	= $this->_mod->status($val['status'],$val['coupon_start_time'],$val['coupon_end_time']);
			$items[$key]['pics']     = $this->pic = D('items')->where(array('id'=>$item['id']))->getField('pic_url');
			$items[$key]['titles']     = $this->title = D('items')->where(array('id'=>$item['id']))->getField('title');
			$items[$key]['zk']		= round(($val['coupon_price']/$val['price'])*10, 1); 
			$items[$key]['itemurl'] = C('yh_site_url').'/item/'.$val['id'].'.html';
			$items[$key]['jumpurl']	= C('yh_site_url').'/jump/'.$val['id'].'.html';
			if(!$val['click_url']){
				$items[$key]['click_url']	="";//U('jump/index',array('id'=>$val['id']));
			}
			if($val['coupon_start_time']>time()){
				$items[$key]['click_url']	="";//U('item/index',array('id'=>$val['id']));
				$items[$key]['timeleft'] = $val['coupon_start_time']-time();
			}else{
				$items[$key]['timeleft'] = $val['coupon_end_time']-time();
			}
			$items[$key]['cate_name']		=$cate_list['p'][$val['cate_id']]['name'];
			$url = C('yh_site_url').U('item/index',array('id'=>$val['id']));
			$items[$key]['url'] = urlencode($url);			
			$items[$key]['urltitle'] = urlencode($val['title']);
			$items[$key]['price'] = number_format($val['price'],1);
			$items[$key]['coupon_price'] = number_format($val['coupon_price'],1);
			$pagecount++;
			if($val['sellerId']){
				$seller_arr[] = $val['sellerId'];
			}
			
		}
		$seller_arr = array_unique($seller_arr);
		$sellers = implode(",",$seller_arr);
        if (!$item['desc']) {
            $descUrl = 'http://hws.m.taobao.com/cache/mtop.wdetail.getItemDescx/4.1/?data=%7B%22item_num_id%22%3A%22' . $item['num_iid'] . '%22%7D';
            $yhxia_https = new yhxia_https();
            $yhxia_https->fetch($descUrl);
            $source = $yhxia_https->results;
            if (!$source) {
                $source = file_get_contents($descUrl);
            }
            $result_data = json_decode($source, true);
            $dinfo = array();
            $num = $result_data['data']['images'];
            for ($i = 0; $i < count($num); $i++) {
                $images = $i + 1;
                $desc[$images] = $num[$i];
                $desc[$images] = '<img class="lazy" src=' . $desc[$images] . '>';
            }
            $desc = $desc[1] . '' . $desc[2] . '' . $desc[3] . '' . $desc[4] . '' . $desc[5] . '' . $desc[6] . '' . $desc[7] . '' . $desc[8] . '' . $desc[9] . '' . $desc[10] . '' . $desc[11] . '' . $desc[12] . '' . $desc[13] . '' . $desc[14] . '' . $desc[15] . '' . $desc[16] . '' . $desc[17] . '' . $desc[18] . '' . $desc[19] . '' . $desc[20] . '' . $desc[21] . '' . $desc[22] . '' . $desc[23] . '' . $desc[24] . '' . $desc[25] . '' . $desc[26] . '' . $desc[27] . '' . $desc[28] . '' . $desc[29] . '' . $desc[30];
            $item['desc'] = $desc;
            $data['desc'] = $desc;
            $this->_mod->where(array('num_iid' => $item['num_iid']))->save($data);
        }
		if(C('yh_dn_item_desc')){
			unset($item['desc']);unset($data['desc']);unset($desc);
		}
		$this->assign('item', $item);
		$this->assign('sellers', $sellers);
		$this->assign('items_list', $items);
		$this->assign('cate_list', $cate_list); //分类
		$this->assign('desc', $desc);
		$this->display();
    }


	


    /**
     * AJAX获取评论列表
     */
    public function comment_list() {
        $id = I('id','', 'intval');
        !$id && $this->ajaxReturn(0, L('invalid_item'));

        $item = $this->_mod->where(array('id' => $id, 'pass' => '1'))->count('id');
        !$item && $this->ajaxReturn(0, L('invalid_item'));
        $item_comment_mod = M('items_comment');
        $pagesize = 8;
        $map = array('item_id' => $id,'status' => '1');
        $count = $item_comment_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
		$pager->listRows = 8;
        $cmt_list = $item_comment_mod->where($map)->order('add_time DESC')->limit($pager->firstRow . ',' . $pager->listRows)->select();
        $this->assign('cmt_list', $cmt_list);
        $data = array();
        $data['list'] = $this->fetch('comment_list');
        $data['page'] = $pager->fshow();
        $this->ajaxReturn(1, '', $data);
    }

    /**
     * 评论一个商品
     */
    public function comment() {
        foreach ($_POST as $key=>$val) {
            $_POST[$key] = Input::deleteHtmlTags($val);
        }
        $data = array();
        $data['item_id'] = I('id', '','intval');
        !$data['item_id'] && $this->ajaxReturn(0, L('invalid_item'));
        $data['info'] = I('content','', 'trim');
        !$data['info'] && $this->ajaxReturn(0, L('please_input') . L('comment_content'));

		$data['status'] = 1;
        $data['uid'] = $this->visitor->info['id'];
        $data['uname'] = $this->visitor->info['username'];

        //验证商品
        $item = $this->_mod->field('id,uid,nick')->where(array('id' => $data['item_id'], 'pass' => '1'))->find();
        !$item && $this->ajaxReturn(0, L('invalid_item'));
        //写入评论
        $item_comment_mod = D('items_comment');
        if (false === $item_comment_mod->create($data)) {
            $this->ajaxReturn(0, $item_comment_mod->getError());
        }
        $comment_id = $item_comment_mod->add();
        if ($comment_id) {
            $this->assign('cmt_list', array(
                array(
                    'uid' => $data['uid'],
                    'uname' => $data['uname'],
                    'info' => $data['info'],
                    'add_time' => time(),
                )
            ));
            $resp = $this->fetch('comment_list');
            $this->ajaxReturn(1, L('comment_success'), $resp);
        } else {
            $this->ajaxReturn(0, L('comment_failed'));
        }
    }

	public function noshow(){
		$id = I('id');
		$username = $this->visitor->info['username'];
		if($username != C('yh_index_admin')){
			$this->ajaxReturn(0,'越权！');
		}
		$data['isshow'] = 0;
		if(M('items')->where(array('num_iid'=>$id))->save($data)){
			$this->ajaxReturn(1, '取消成功！');
		}else{
    			$this->ajaxReturn(0, $this->_mod->getError());
    		}
	}

    /**
     * 删除商品
     */
    public function delete() {
        $id = I('id','', 'intval');
        !$id && $this->ajaxReturn(0, L('invalid_item'));
        $uid = $this->visitor->info['id'];
        $uname = $this->visitor->info['username'];
        $result = D('items')->where(array('id' => $id))->delete();
        if ($result) {
             $this->ajaxReturn(1, L('del_item_success'));
        } else {
             $this->ajaxReturn(0, L('del_item_failed'));
        }
    }


	/**
     * 获取紧接着的下一级分类ID
     */
    public function ajax_getchilds() {
        $id = I('id','', 'intval');
        $map = array('pid'=>$id,'status'=>'1');
        $return = M('items_cate')->field('id,name')->where($map)->select();
        if ($return) {
            $this->ajaxReturn(1, L('operation_success'), $return);
        } else {
            $this->ajaxReturn(0, L('operation_failure'));
        }
    }

	

}