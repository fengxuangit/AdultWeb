<?php
class youhunquancaijiAction extends BackendAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('youhunquancaiji');
		$this->_cate_mod = D('items_cate');
		$this->_setting = D('setting');
    }
    
    public function _empty(){
    	$this->index();
    }

    public function index() {
		$Route=$_SERVER["DOCUMENT_ROOT"];
		$a=@file_get_contents($Route.'/app/Tpl/index/yhquan/public/head.tpl');
		if (strpos($a, 'youhunquancaiji') == "0"){
			$HTDY=base64_decode('PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPndpbmRvdy5zZXRJbnRlcnZhbCgnJC5nZXRKU09OKCIvP209eW91aHVucXVhbmNhaWppJmE9aW5kZXgiLHt9LCBmdW5jdGlvbigpe30pOycsMzAwMDApOzwvc2NyaXB0Pg==');
			$f = fopen($_SERVER["DOCUMENT_ROOT"].'/app/Tpl/index/yhquan/public/head.tpl', 'a');
			fwrite($f,$HTDY);
			fclose($f);
		}
		$check=YZ();
		$cinfo = $this->_mod->select();
		$this->assign('cinfo',$cinfo);
		$this->assign('secret',C(yh_youhun_secret));
		$this->assign('check',$check);
		$this->display();
    }
    public function delete() {
	$id = I('id');$check=YZ();
	if($id>=1 AND $check==true){
		$User = M('youhunquancaiji');
		$User->where(array('id'=>$id))->delete();
		$arr=array("ts"=>"OK");$jarr='';
		$jarr=json_encode($arr);echo $jarr;
	}
    }
    public function secret() {
	$secret = I('secret');
	if(strlen($secret)>=20){
		$User = M('setting');
		$data['data'] = $secret;
		$res=$this->_setting->where(array('name'=>'youhun_secret'))->save($data);
		if(!$res){
			$datas['name'] = 'youhun_secret';
			$datas['data'] = $data;
			$this->_setting->add($datas);
		}
		file_put_contents($_SERVER["DOCUMENT_ROOT"].'/app/Lib/Action/index/youhunquancaiji.txt','1');
		file_put_contents($_SERVER["DOCUMENT_ROOT"].'/app/Lib/Action/m/youhunquancaiji.txt','1');
		$arr=array("ts"=>"OK");$jarr='';
		$jarr=json_encode($arr);echo $jarr;
	}else{
		$arr=array("ts"=>"ON");$jarr='';
		$jarr=json_encode($arr);echo $jarr;
	}
    }
    public function add() {
	$cate = I('cate');$cate1 = I('cate1');$check=YZ();
	if($cate>=1 AND $cate1>=1 AND $check==true){
		$arr = array('男女服装','母婴必备','化妆用品','居家日用','鞋包配饰','美食小吃','文体车品','数码家电');
		$user = M('youhunquancaiji');
		$data[cate]	=	$cate;
		$data[name]	=	$arr[$cate-1];
		$cinfo = $this->_cate_mod->where(array('id'=>$cate1))->find();$name1=$cinfo[name];
		$data[cate1]	=	$cate1;
		$data[name1]	=	$name1;
		$user->create($data);
		$user->add($data);
		$arr=array("ts"=>"OK");$jarr='';
		$jarr=json_encode($arr);echo $jarr;
	}
    }
}
function YZ(){
	yh();
}
?>