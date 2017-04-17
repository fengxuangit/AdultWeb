<?php
class ershiAction extends FirstendAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_cate_mod = D('items_cate');
		C('DATA_CACHE_TIME',C('yh_site_cachetime'));
    }
    /**
	 ** 首页（全部）
	 **/
    public function index() { 
		$p		= I('p',1 ,'intval'); //页码
		$sort	= I('sort', 'new', 'trim'); //排序
		$status = I('status', 'all', 'trim'); //排序
		$today_str = 10;
		$tomorr_str = 20;
		$today_wh['coupon_price'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		$tomorr_wh['coupon_price'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		
		$tomorr_wh['pass'] = '1';
		$tomorr_wh['isshow'] = '1';	
		$today_wh['pass'] = '1';
		$today_wh['isshow'] = '1';	
		
		if(C('yh_site_cache')){
			if(false === $tomorr_item = S($file)){
				$tomorr_item = $this->_mod->where($tomorr_wh)->count();
				S($file,$tomorr_item);
			}
		}else{
			$tomorr_item = $this->_mod->where($tomorr_wh)->count();
		}
		
		if(C('yh_site_cache')){
			if(false === $today_item = S($file)){
				$today_item = $this->_mod->where($today_wh)->count();
				S($file,$today_item);
			}
		}else{
			$today_item = $this->_mod->where($today_wh)->count();
		}
		$this->assign('tomorr_item', $tomorr_item);
		$this->assign('today_item', $today_item);

		$order = 'ordid asc';
		switch ($sort){
    		case 'new':
				$order.= ', coupon_start_time DESC';
				break;
			case 'price':
				$order.= ', price DESC';
				break;
			case 'rate':
				$order.= ', coupon_rate ASC';
				break;
			case 'hot':
				$order.= ', volume DESC';
				break;
			case 'default':
				$order.= ', '.C('yh_index_sort');
		}

		switch ($status){
            case 'all':
                $where['status']="underway";
                break;
            case 'underway':
                $where['status']="underway";
                break;
			case 'sellout':
				$where['status']="sellout";
				break;
        }


		
		if(C('yh_index_shop_type')){$where['shop_type'] = C('yh_index_shop_type');}
		if(C('yh_index_mix_price')>0){$where['coupon_price'] = array('egt',C('yh_index_mix_price'));}
		if(C('yh_index_max_price')>0){$where['coupon_price'] = array('elt',C('yh_index_max_price'));}
		if(C('yh_index_mix_price')>0 && C('yh_index_max_price')>0){$where['coupon_price'] = array(array('egt',C('yh_index_mix_price')),array('elt',C('yh_index_max_price')),'and');}
		if(C('yh_index_mix_volume')>0){$where['volume'] = array('egt',C('yh_index_mix_volume'));}
		if(C('yh_index_max_volume')>0){$where['volume'] = array('elt',C('yh_index_max_volume'));}
		if(C('yh_index_mix_volume')>0 && C('yh_index_max_volume')>0){$where['volume'] = array(array('egt',C('yh_index_mix_volume')),array('elt',C('yh_index_max_volume')),'and');}
		
		$where['coupon_price'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		$where['pass'] = '1';
		$where['isshow'] = '1';
		$index_info['sort']=$sort;
		$index_info['status']=$status;
		$page_size = C('yh_index_page_size');
		$index_info['p']=$p;

        $start = $page_size * ($p - 1) ;

		if(false === $ershi = F('ershi')) {
			$ershi = D('items_cate')->cate_cache();
		}
		$this->assign('cate_list', $ershi); //分类

		$mdarray = $where;
		$mdarray['sort'] = $sort;
		$mdarray['status'] = $status;
		$mdarray['order'] = $order;
		$mdarray['p'] = $p; 
		$md_id = md5(implode("-",$mdarray));
		$file = 'ershi_'.$md_id;
 
		if(C('yh_site_cache')){
			if(false === $items = S($file)){
				$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
				$items = array();
				$seller_arr = array();
				$sellers = '';
				foreach($items_list as $key=>$val){
					$items['item_list'][$key]			= $val;					
					$items['item_list'][$key]['class']	= $this->_mod->status($val['status'],$val['coupon_start_time'],$val['coupon_end_time']);
					$items['item_list'][$key]['zk']		= round(($val['coupon_price']/$val['price'])*10, 1); 
					if(!$val['click_url']){
						$items['item_list'][$key]['click_url']	=U('jump/index',array('id'=>$val['id']));
					}
					if($val['coupon_start_time']>time()){
						$items['item_list'][$key]['click_url']	=U('item/index',array('id'=>$val['id']));
						$items['item_list'][$key]['timeleft'] = $val['coupon_start_time']-time();
					}else{
						$items['item_list'][$key]['timeleft'] = $val['coupon_end_time']-time();
					}
					$items['item_list'][$key]['cate_name']		=$ershi['p'][$val['cate_id']]['name']; 
					$url = C('yh_site_url').U('item/index',array('id'=>$val['id']));
					$items['item_list'][$key]['url'] = urlencode($url);
					$items['item_list'][$key]['urltitle'] = urlencode($val['title']);
					$items['item_list'][$key]['price'] = number_format($val['price'],1);
					$items['item_list'][$key]['coupon_price'] = number_format($val['coupon_price'],1);
					if($val['sellerId']){
						$items['seller_arr'][] = $val['sellerId'];
					}
				}
				S($file,$items);
			}
		}else{
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
			$items = array();
			$seller_arr = array();
			$sellers = '';
			foreach($items_list as $key=>$val){
				$items['item_list'][$key]			= $val;
				$items['item_list'][$key]['class']	= $this->_mod->status($val['status'],$val['coupon_start_time'],$val['coupon_end_time']);
				$items['item_list'][$key]['zk']		= round(($val['coupon_price']/$val['price'])*10, 1); 
				if(!$val['click_url']){
					$items['item_list'][$key]['click_url']	=U('jump/index',array('id'=>$val['id']));
				}
				if($val['coupon_start_time']>time()){
					$items['item_list'][$key]['click_url']	=U('item/index',array('id'=>$val['id']));
					$items['item_list'][$key]['timeleft'] = $val['coupon_start_time']-time();
				}else{
					$items['item_list'][$key]['timeleft'] = $val['coupon_end_time']-time();
				}
				$items['item_list'][$key]['cate_name']		=$ershi['p'][$val['cate_id']]['name']; 
				$url = C('yh_site_url').U('item/index',array('id'=>$val['id']));
				$items['item_list'][$key]['url'] = urlencode($url);
				$items['item_list'][$key]['urltitle'] = urlencode($val['title']);
				$items['item_list'][$key]['price'] = number_format($val['price'],1);
				$items['item_list'][$key]['coupon_price'] = number_format($val['coupon_price'],1);
				if($val['sellerId']){
					$items['seller_arr'][] = $val['sellerId'];
				}
			}
		}
		
		$seller_arr = array_unique($items['seller_arr']);
		$sellers = implode(",",$seller_arr);
		if(IS_AJAX){
			if(!$items){$this->ajaxReturn(0, '加载完成');}
			$this->assign('items_list', $items['item_list']);
			$resp = $this->fetch('ajax');
            $this->ajaxReturn(1, '', $resp);
		}
		$this->assign('sellers', $sellers);

		$this->assign('items_list', $items['item_list']);
		$this->assign('index_info',$index_info);


		
		if(C('yh_site_cache')){
			$file = 'ershi';
			if(false === $count = S($file)){
				$count = $this->_mod->where($where)->count();
				S($file,$count);
			}
		}else{
			$count = $this->_mod->where($where)->count();
		}

		$pager = $this->_pager($count, $page_size);
		$this->assign('page', $pager->kshow());
		$this->assign('zpage', $pager->zshow());
		$this->assign('total_item',$count);
 
		$this->assign('pager','index');
		$this->assign('ajaxurl',U('index/index',array('p'=>$index_info['p'],'sort'=>$index_info['sort'])));
    	$this->assign('nav_curr', 'ershi');
    	$this->_config_seo(C('yh_seo_config.ershi'));
		$this->display();
    }

	public function shortcut(){
		$Shortcut = "[InternetShortcut] 
		URL=".C('yh_site_url')." 
		IDList= 
		[{000214A0-0000-0000-C000-000000000046}] 
		Prop3=19,2 
		"; 
		Header("Content-type: application/octet-stream"); 
		header("Content-Disposition: attachment; filename=".C('yh_site_name').".url;"); 
		echo $Shortcut; 
	}

}