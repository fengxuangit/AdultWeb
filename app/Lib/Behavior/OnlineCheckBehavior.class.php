<?php
defined('THINK_PATH') or exit();
/*
 * ������Ϊ: ���߸���
 */

class OnlineCheckBehavior extends Behavior {

    //��Ϊ����
    protected $options = array(
        'ONLINE_CHECK' => true,			// Ĭ�Ͻ�������
        'ONLINE_CHECK_TIME' => 1440,	// Ĭ��24Сʱδ���˵��������
    );

    public function run(&$params) {
        if (C('ONLINE_CHECK')) {
			if(rand(1,50) == 1){
				// ����session
				if ((session('?user_info')) && (time() - session('access_time') > 60)) {
					session('access_time', time());
				}
				// ���߸���
				$ip = get_client_ip();
				$online = M('Online');
				$map['lasttime'] = array('lt', time() - C('ONLINE_CHECK_TIME') * 60);
				$icount = $online->where($map)->delete();
				if (session('?user_info')) { // ����ǵ�¼�û�
					$user_info = session('user_info');
					$map = array();
					$map['uid'] = $user_info['id'];
					//$map['ip'] = $ip;
					$ids = $online->where($map)->getField('id');
					if (empty($ids)) { // ���������߼�¼�������session
						session('user_info', null);
						cookie('user_info', null);
					} else {
						$map = array();
						$map['id'] = array('eq', $id);
						$data['lasttime'] = time();
						$data['ip'] = $ip;
						$online->where($map)->save($data);
					}
				} else { // ���ǵ�¼�û�  �ο�
					unset($map);
					$map['ip'] = array('eq', $ip);
					$ids = $online->where($map)->getField('id');
					//dump($id);
					if (empty($ids)) { // ���������߼�¼�� �����
						$data = array();
						$data['uid'] = 0;
						$data['account'] = 'Guest';
						$data['username'] = '�ο�';
						$data['lasttime'] = time();
						$data['ip'] = $ip;
						$online->add($data);
					} else {
						$map = array();
						$map['id'] = array('eq', $id);
						$data['lasttime'] = time();
						$data['ip'] = $ip;
						$online->where($map)->save($data);
					}
				}
			}
        }
    }
}

