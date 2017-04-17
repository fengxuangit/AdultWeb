<?php
class tejiaAction extends BackendAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('tejia_cate');
    }

	public function index(){
		$this->display();
	}
	public function setting(){
		if(IS_POST){
			$cate_id		= $this->_post('cate_id', 'trim');
			$tejia_cate_id	= $this->_post('tejia_cate_id', 'trim');
			if(!$tejia_cate_id){
				$this->ajaxReturn(0, '采集分类必须选择！');
			}
			if(!$cate_id){
				$this->ajaxReturn(0, '入库分类必须选择！');
			}
			$map = array('id'=>$tejia_cate_id);
			$return = $this->_mod->field('cid,name,pid')->where($map)->find();
			//把采集信息写入缓存
			F('tejia_setting', array(
				'cate_id' => $cate_id,
				'cid' => $return['cid'],
				'pid' => $return['pid'],
			));			
			$this->collect();
		}
	}

    public function collect() {
		$source = '';
		if (false === $setting = F('tejia_setting')) {
            $this->ajaxReturn(0, L('illegal_parameters'));
        }
		$p		= $this->_get('p', 'intval', 1);
		if(!$setting['pid']){
			$url = 'http://te.tejia.taobao.com/tejia_list.htm?&promotionId='.$setting['cid'].'&p='.$p.'#J_More';
		}else{
			$url = 'http://te.tejia.taobao.com/tejia_list.htm?&promotionId='.$setting['pid'].'&cid='.$setting['cid'].'&p='.$p.'#J_More';
		}
		
		if($p==1){
			$totalcoll = 0;
		}else{
			$totalcoll = F('totalcoll');
		}
		
		$coll=0;
        $yhxia_https = new yhxia_https();
		$yhxia_https->fetch($url);
		$source = $yhxia_https->results;
		if(!$source){
			$source = file_get_contents($url);
			}						
		$source = rtrim(ltrim(trim($source), '('), ')'); 
		$source = iconv('GBK', 'UTF-8//IGNORE', $source);
		if(strpos($source,'result-non-bd')){
			$this->ajaxReturn(0, '该类目暂时没有特价商品');
		}		
		if(preg_match_all('/<li class="par-item(.*?)<\/li>/s', $source, $matchitem)) { 
			for($i=0;$i<count($matchitem[1]);$i++){
				$item=$matchitem[1][$i];
				$title	=get_word($item,'<dd class="title">','<\/dd>');
                $title = preg_replace("/<a[^>]*href=[^>]*>|<\/[^a]*a[^>]*>/i","",$title); 				
				$img	=get_word($item,'<img data-ks-lazyload="','_210x210.jpg"',' width="210" height="210"');
				$url	=get_word($item,'<dd class="title"><a href="','&f=tejialist"','target="_blank">');	
                preg_match("/id=(\d*)/", $url ,$num);	
                $iid	=isset($num[1]) ? $num[1] : '';			
				$price	=get_word($item,'<del>','<\/del>');
				$zkprice=get_word($item,'<strong>','<\/strong>');
				$volume	=rand(9,679);
				$likes	=rand(99,9999);
				$nick	='';
				$ems	='1';
				$zekou	=get_word($item,'<span class="discount">','折');
				if(!defined(ENDTIME)){
							define('ENDTIME','72');
						}
						if(!$times){
							$times	=	(int)(time()+ENDTIME*3600);
						}
                $tag_list = d("items")->get_tags_by_title($title);
                $tags = implode(" ",$tag_list);   
				$itemarray['shop_type']='C';
				$itemarray['title']=''.$title;
				$itemarray['tags']=$tags;
				$itemarray['intro']='原价：'.$price.'元，折扣后价格：'.$zkprice.'元，'.$likes.'人觉得不错，目前已有'.$volume.'人参与抢购。';
				$itemarray['pic_url']='http:'.$img;
				$itemarray['num_iid']=$iid;
				$itemarray['price']=$price;
				$itemarray['coupon_price']=$zkprice;
				$itemarray['volume']=$volume;
				$itemarray['nick']=$nick;
				$itemarray['ems']=$ems;
				$itemarray['likes']=$likes;
				$itemarray['cate_id']=$setting['cate_id'];
				$itemarray['coupon_rate']=$zekou*1000;
				$itemarray['coupon_end_time']=$times;
				$itemarray['coupon_start_time']=time();
						
				if($title && $img && $iid ){
					$result['item_list'][]=$itemarray;
				}
			  }
		 }
		// exit(print_r($result));
		foreach ($result['item_list'] as $key => $val) {
			$res= $this->_ajax_tb_publish_insert($val);
			if($res>0){
				$coll++;
			}
			$totalcoll++;
		}		
		if(strpos($source,'<span class="page-next" title="下一页">')){
			$this->ajaxReturn(0, '已经采集完成'.$p.'页,本次采集到'.$totalcoll.'件商品！请返回，谢谢');
		}
		
		F('totalcoll',$totalcoll);
		$this->assign('p',$p);
		$this->assign('coll', $coll); 
		$this->assign('totalnum', $totalnum);
		$this->assign('totalcoll', $totalcoll);
		$resp = $this->fetch('collect');
		$this->ajaxReturn(1, '', $resp);
    }


	private function _ajax_tb_publish_insert($item) {        
        $item['title']=trim(strip_tags($item['title']));
		$result = D('items')->ajax_yg_publish($item);
        return $result;
    }
  
}