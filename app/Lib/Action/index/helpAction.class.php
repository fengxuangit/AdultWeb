<?php

class helpAction extends FirstendAction {

	public function index(){
		$id = 1;
        !$id && $this->_404();
        $help_mod = M('help');
        $help = $help_mod->field('id,title,info')->find($id);
        $helps = $help_mod->field('id,title,info')->select();
				$this->_config_seo(array(
            'title' => $help['title'],
        ));
        $this->assign('helps',$helps);
        $this->assign('id',$id);
        $this->assign('help',$help); //分类选中
        $this->display('read');
		
	}


	public function read(){
		$id = I('id','1', 'intval');
        !$id && $this->_404();
        $help_mod = M('help');
        $help = $help_mod->field('id,title,info')->find($id);
        $helps = $help_mod->field('id,title,info')->select();
				$this->_config_seo(array(
            'title' => $help['title'],
        ));
        $this->assign('helps',$helps);
        $this->assign('id',$id);
        $this->assign('help',$help); //分类选中
        $this->display('read');
	}

	public function qianggou(){
		$page_seo=array(
			'title' => '抢购小技巧 - ',
        );
		$this->assign('page_seo', $page_seo);
		$this->display('qianggou');
	}

}