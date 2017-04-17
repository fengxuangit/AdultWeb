<?php

class settingAction extends BackendAction {

    public function _initialize() {
        parent::_initialize();
        $this->_mod = D('setting');
		$cate_data = D('items_cate')->cate_data_cache();
        $this->assign('cate_data', $cate_data);
    }

    public function index() {
        $type = $this->_get('type', 'trim', 'index');
		$index_cids = C('yh_index_cids');
		$this->assign('index_cids', $index_cids);
		if(IS_AJAX){
			$response = $this->fetch($type);
			$this->ajaxReturn(1, '', $response);
		}else{
			$this->display($type);
		}
    }

	public function cache() {
        $this->display();
    }
    
    public function user() {
        $this->display();
    }

    public function edit() {
        $setting = $this->_post('setting', ',');
        foreach ($setting as $key => $val) {
            $val = is_array($val) ? serialize($val) : $val;
            $res = $this->_mod->where(array('name' => $key))->save(array('data' => $val));
			if(!$res){
				$datas['name'] = $key;
				$datas['data'] = $val;
				$this->_mod->add($datas);
			}
        }
        $type = $this->_post('type', 'trim', 'index');
		IS_AJAX && $this->ajaxReturn(1, L('operation_success'), '', 'add');
        $this->success(L('operation_success'));
    }

    public function ajax_mail_test() {
        $email = $this->_get('email', 'trim');
        !$email && $this->ajaxReturn(0);
        //发送
        $mailer = mailer::get_instance();
        if ($mailer->send($email, '这是一封测试邮件', '这是一封秒杀程序自动发送的测试邮件')) {
            $this->ajaxReturn(1);
        } else {
            $this->ajaxReturn(0);
        }
    }

	public function ajax_upload( ){
        if(!empty( $_FILES['img']['name'])){
            $result = $this->_upload( $_FILES['img'], "site/" );
            if ( $result['error']){
                $this->error( $result['info'] );
            }else{
                $data['img'] = $result['info'][0]['savename'];
                $this->ajaxReturn( 1, L( "operation_success" ), C( "yh_attach_path" )."site/".$data['img'] );
            }
        }else{
            $this->ajaxReturn( 0, L( "illegal_parameters" ) );
        }
    }

}