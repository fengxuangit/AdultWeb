<?php

class msgAction extends BackendAction{

    public function _initialize() {
        parent::_initialize();
        $this->_mod = D('msg');
    }

    public function _before_index() {
        $type = $this->_get('type','intval',1);
        if( $type==1 ){
            $big_menu = array(
                'title' => L('发送通知'),
                'iframe' => U('msg/add'),
                'id' => 'add',
                'width' => '500',
                'height' => '320'
            );
            $this->assign('big_menu', $big_menu);
        }
        $this->assign('type',$type);
    }

    protected function _search() {
        $map = array();
        ($time_start = $this->_request('time_start', 'trim')) && $map['add_time'][] = array('egt', strtotime($time_start));
        ($time_end = $this->_request('time_end', 'trim')) && $map['add_time'][] = array('elt', strtotime($time_end)+(24*60*60-1));
        ($keyword = $this->_request('keyword', 'trim')) && $map['info'] = array('like', '%'.$keyword.'%');
        ($fname = $this->_request('fname', 'trim')) && $map['fname'] = array('like', '%'.$fname.'%');
        ($tname = $this->_request('tname', 'trim')) && $map['tname'] = array('like', '%'.$tname.'%');
        $type = $this->_request('type', 'intval');
        if( $type ){
            if( $type==1 ){
                $map['fuid'] = 0;
            }else if( $type==2 ){
                $map['fuid'] = array('gt',0);
            }
        }
		//p($map);
        $this->assign('search', array(
            'time_start' => $time_start,
            'time_end' => $time_end,
            'fname' => $fname,
            'tname'   => $tname,
            'type'  => $type,
            'keyword' => $keyword,
        ));
        return $map;
    }

    public function add() {
        if (IS_POST) {
            //用户
            $to_name = $this->_post('to_name', 'trim');
            //发送者
            $from_user = session('admin');
            $from_name = $from_user['username'];
            //接收者
            $to_user = array(array('id'=>'0', 'username'=>'SYSTEM'));
            if ($to_name) {
                //指定用户
                $to_name = split(PHP_EOL, $to_name);
                $to_user = M('user')->field('id,username')->where(array('username'=>array('in', $to_name)))->select();
            }
           
                //自定义
                $info = $this->_post('info', 'trim');
                !$info && $this->ajaxReturn(0, L('message_empty'));
          
            //逐条发送
            foreach ($to_user as $val) {
                $this->_mod->create(array(
                    'fuid' => 0,
                    'fname' => 'SYSTEM',
                    'tuid' => $val['id'],
                    'tname' => $val['username'],
                    'info' => $info,
					'add_time' => time(),
                ));
                $this->_mod->add();
            }
            $this->ajaxReturn(1, L('operation_success'), '', 'add');
        } else {
            $response = $this->fetch();
            $this->ajaxReturn(1, '', $response);
        }
    }

}