<?php
class youhunquancaijiAction extends FirstendAction {
	public function _initialize() {
        parent::_initialize();
		$this->items = D('items');
        $this->_cate = D('youhunquancaiji');
    }
    
    public function _empty(){
    	$this->index();
    }
    
    public function shanchu(){
		$WenJian = $_SERVER["DOCUMENT_ROOT"].'/app/Lib/Action/m/youhunquancaiji.txt';
		file_put_contents($WenJian,'0');
    }

    public function index() {
		$WenJian = $_SERVER["DOCUMENT_ROOT"].'/app/Lib/Action/m/youhunquancaiji.txt';
		$page=@file_get_contents($WenJian);$page=intval($page);if($page<=1){$page=1;}
		if(strtotime(date('Y-m-d H:i:s'))-$page >= (60*60*2) or $page <= 100){
			if( (strtotime(date('Y-m-d H:i:s')) - $page) >= (60*60*2) and $page > 100){$page=1;}
			if (!function_exists("fastcgi_finish_request")){function fastcgi_finish_request(){}}
			$check=YZ();
			$cinfo = $this->_cate->select();
			for($i=0;$i<count($cinfo);$i++){
				$cate_cate[$cinfo[$i][cate]]=$cinfo[$i][cate1];
			}
			if( $page ==  88  ){
				$URL='http://api.dataoke.com/index.php?r=Port/index&type=paoliang&appkey=898mzxa88q&v=2';//	实时跑量榜API接口
			}elseif( $page ==  66  ){
				$URL='http://api.dataoke.com/index.php?r=Port/index&type=top100&appkey=898mzxa88q&v=2';//	TOP100人气榜API接口
			}else{
				$URL='http://api.dataoke.com/index.php?r=Port/index&type=total&appkey=898mzxa88q&v=2&page='.$page;//	全站领券商品API接口
			}
			$curl = curl_init();
			curl_setopt($curl, CURLOPT_URL, $URL);
			curl_setopt($curl, CURLOPT_TIMEOUT,29);
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
			$result = curl_exec($curl);
			curl_close($curl);
			if(strlen($result) > 100){
				$json=json_decode($result, true);
				$item=$json['result'];
				for($i=0;$i<count($item);$i++){
					$item_1=$item[$i];$data=array();
					if(array_key_exists($item_1['Cid'], $cate_cate)){$OK=1;}else{$OK=0;}
					if($OK == 1){
						$data['cate_id']		=		$cate_cate[$item_1['Cid']];
						$data['item_url']		=		'http://item.taobao.com/item.htm?id='.$item_1['GoodsID'];
						$data['num_iid']		=		$item_1['GoodsID'];
						$data['title']			=		$item_1['Title'];
						$data['pic_url']		=		str_replace('https','http',$item_1['Pic']);
						$data['price']			=		$item_1['Org_Price'];
						$data['coupon_price']	=		$item_1['Price'];
						if($item_1['IsTmall']==1){
							$data['shop_type']	=		'B';
						}else{
							$data['shop_type']	=		'C';
						}
						$data['nick']			=		$item_1['SellerID'];
						$data['sellerId']		=		$item_1['SellerID'];
						$data['volume']			=		$item_1['Sales_num'];
						$data['commission_rate']=		$item_1['Commission'];
						$data['commission']		=		($data['commission_rate']*($data['coupon_price']/100));
						$data['coupon_rate']	=		number_format(($data['coupon_price'] / $data['price'] * 10000), 0, '.', '');
						$data['intro']			=		$item_1['Introduce'];
						$data['Quan_condition']	=		$item_1['Quan_condition'];
						$data['isq']			=		1;
						$data['ems']			=		1;
						$data['pass']			=		1;
						if( $page ==  88  ){
							$data['quan_pl']	=		1;
						}elseif( $page ==  66  ){
							$data['quan_rq']	=		1;
						}
						$data['quan']			=		$item_1['Quan_price'];
						$data['quanurl']		=		$item_1['Quan_link'];
						$data['Quan_surplus']	=		$item_1['Quan_surplus'];
						$data['Quan_receive']	=		$item_1['Quan_receive'];
						$data['coupon_start_time']=		strtotime(date('Y-m-d H:i:s'));
						$data['add_time']		=		strtotime(date('Y-m-d H:i:s'));
						$data['coupon_end_time']=		strtotime(date('Y-m-d H:i:s',strtotime('+3 day')));
						if( (strtotime(date($item_1['Quan_time'])) - $data['coupon_end_time']) <=0 ){
						$data['coupon_end_time']=		strtotime(date($item_1['Quan_time']));
						}
						if( $data['coupon_end_time'] > $data['coupon_start_time'] ){
							$cinfo = $this->items->where(array("num_iid"=>$data['num_iid']))->find();
							$user = M('items');	
							if($cinfo){
								unset($data['add_time']); unset($data['coupon_start_time']); 
								$user->where(array("num_iid"=>$data['num_iid']))->data($data)->save(); 
								$N++;
							}else{
								$user->create($data);
								$user->add($data);
								$Y++;
							}
						}
						//var_dump($data);
						//echo '<BR><BR>';
						if( $i >= (count($item)-1) ){file_put_contents($WenJian,($page+1));}
					}
				}
				if( $page ==  88  ){
					$delete=array();
					$delete['coupon_end_time'] = array('lt',strtotime(date('Y-m-d H:i:s')));
					$delete['isq'] = 1;
					M('items')->where($delete)->delete();
					file_put_contents($WenJian,strtotime(date('Y-m-d H:i:s')));
				}
				if( $page ==  66  ){file_put_contents($WenJian,'88');}
				if( $item == null ){file_put_contents($WenJian,'66');}
			}else{
				file_put_contents($WenJian,strtotime(date('Y-m-d H:i:s',strtotime('-1 hours'))));
			}
		}
    }
}

function YZ(){
	yh();
}
?>