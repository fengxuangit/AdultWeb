<?php
class youhundingxiangAction extends BackendAction {
	public function _initialize() { 
        parent::_initialize();
		$this->_cate_mod = D('items_cate');
    }
	public function _empty(){
    	$this->index();
    }
	public function index()
	{
		$this->display();
	}
	public function setting()
	{
			$fid = $this->_post('fid', 'trim');
			$eid = $this->_post('eid', 'trim');
			$applyreason = $this->_post('applyreason', 'trim');
			
			$fid = '0';
			$eid = '999999999';
			$applyreason = '游魂淘宝客定向计划，万人齐推，请速过！';
			if ((strtotime(date('2016-10-10')) - strtotime(date('Y-m-d H:i:s'))) < 0) {
				$this->ajaxReturn(0, base64_decode('5o+S5Lu25bey6L+H5pyf6K+35pu05paw5pyA5paw54mIIQ=='));
			}
			F('youhundingxiang_setting', array('cate_id' => $cate_id, 'fid' => $fid, 'eid' => $eid, 'applyreason' => $applyreason));
			$this->dingxiang();
	}
	public function dingxiang()
	{
		if (false === ($zym_49 = F('youhundingxiang_setting'))) {
			$this->ajaxReturn(0, L('illegal_parameters'));
		}
		if (false === ($zym_44 = F('totalcoll'))) {
			$zym_44 = 0;
		}
		if (false === ($zym_43 = F('nocoll'))) {
			$zym_43 = 0;
		}
		if (false === ($zym_38 = F('okcoll'))) {
			$zym_38 = 0;
		}
		
		
		
		$applyreason = $zym_49['applyreason'];
		$zym_37 = $zym_49['cate_id'];
		$this->item_mod = M('items');
		$zym_36 = $this->_get('p', 'intval', 1);
		$fid = $zym_49['fid'];
		$eid = $zym_49['eid'];
		if ($fid && $eid) {
			$zym_39['id'] = array(array('egt', $fid), array('elt', $eid));
		}
		$zym_39['shop_type'] = array('neq', 'M');

		$zym_39['pass'] = '1';
		$zym_39['que'] = "0";
		$zym_40 = 1;
		$zym_42 = ($zym_36 - 1) * $zym_40;
		$zym_41 = $this->item_mod->where($zym_39)->count('id');		

		$zym_51 = 'id asc ';
		$zym_52 = $this->item_mod->field('num_iid,sellerId,commission_rate')->where($zym_39)->order($zym_51)->limit($zym_42, $zym_40)->select();
		if ($zym_41) {
			$zym_63 = array();
			foreach ($zym_52 as $zym_62 => $zym_64) {
				$zym_67 = C('yh_cookie');
				$zym_66 = array(' ', '　', '' . "\n" . '', '' . "\r" . '', '' . "\t" . '');
				$zym_68 = array("", "", "", "", "");
				$zym_67 = str_replace($zym_66, $zym_68, $zym_67);
				$zym_61 = get_word($zym_67, '_tb_token_=', ';');
				$zym_55 = get_word($zym_67, 't=', ';');
				$zym_54 = get_word($zym_67, 'cna=', ';');
				$zym_53 = get_word($zym_67, 'l=', ';');
				$zym_56 = get_word($zym_67, 'mm-guidance3', ';');
				$zym_57 = get_word($zym_67, '_umdata=', ';');
				$zym_59 = get_word($zym_67, 'cookie2=', ';');
				$zym_58 = get_word($zym_67, 'cookie32=', ';');
				$zym_35 = get_word($zym_67, 'cookie31=', ';');
				$zym_34 = get_word($zym_67, 'alimamapwag=', ';');
				$zym_12 = get_word($zym_67, 'login=', ';');
				$zym_11 = get_word($zym_67, 'alimamapw=', ';');
				$zym_10 = 't=' . $zym_55 . ';cna=' . $zym_54 . ';l=' . $zym_53 . ';mm-guidance3=' . $zym_56 . ';_umdata=' . $zym_57 . ';cookie2=' . $zym_59 . ';_tb_token_=' . $zym_61 . ';v=0;cookie32=' . $zym_58 . ';cookie31=' . $zym_35 . ';alimamapwag=' . $zym_34 . ';login=' . $zym_12 . ';alimamapw=' . $zym_11;
				$zym_13 = microtime(true) * 1000;
				$zym_13 = explode('.', $zym_13);
				$taodianjin = C('yh_taojindian_html');
				if(strpos($taodianjin,'text/javascript')){
					$pid = get_word($taodianjin,'pid: "','"');
					$pid = explode('_', $pid);
				}else{
					$this->ajaxReturn(0, '请先填写淘点金!');
				}
				$zym_14 = $pid[3];
				$zym_16 = $pid[3];
				$zym_15 = 'http://pub.alimama.com/common/code/getAuctionCode.json?auctionid=' . $zym_64['num_iid'] . '&adzoneid=' . $zym_16 . '&siteid=' . $zym_14 . '&t=' . $zym_13[0] . '&_tb_token_=' . $zym_61 . '&_input_charset=utf-8';
				$zym_9 = curl_init();
				curl_setopt($zym_9, CURLOPT_URL, $zym_15);
				curl_setopt($zym_9, CURLOPT_REFERER, 'http://www.alimama.com/index.htm');
				curl_setopt($zym_9, CURLOPT_HTTPHEADER, array('Cookie:{' . $zym_10 . '}'));
				curl_setopt($zym_9, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($zym_9, CURLOPT_FOLLOWLOCATION, 1);
				$zym_8 = curl_exec($zym_9);
				curl_close($zym_9);
				$zym_3 = json_decode($zym_8, true);
				if ($zym_3) {
					$zym_2 = get_client_ip();
					$zym_1 = 'http://pub.alimama.com/pubauc/getCommonCampaignByItemId.json?itemId=' . $zym_64['num_iid'] . '&t=' . $zym_13[0] . '&_tb_token_=' . $zym_61 . '&pvid=10_27.27.105.237_362_1469025253939';
					$zym_4 = curl_init();
					curl_setopt($zym_4, CURLOPT_URL, $zym_1);
					curl_setopt($zym_4, CURLOPT_REFERER, 'http://pub.alimama.com/promo/search/index.htm');
					curl_setopt($zym_4, CURLOPT_HTTPHEADER, array('Cookie:{' . $zym_10 . '}'));
					curl_setopt($zym_4, CURLOPT_RETURNTRANSFER, true);
					curl_setopt($zym_4, CURLOPT_FOLLOWLOCATION, 1);
					$zym_5 = curl_exec($zym_4);
					curl_close($zym_4);
					$zym_7 = json_decode($zym_5, true);
					$zym_6 = $zym_7['data'];
					for ($i = 0; $i < count($zym_6); $i++) {
						if ($zym_6[$i]['Properties'] == '是') {
							unset($zym_6[$i]);
						}
					}
					sort($zym_6);
					$zym_29 = count($zym_6);
					if ($zym_29 == 1) {
						$zym_28 = $zym_6[0]['CampaignID'];
						$zym_30 = $zym_6[0]['ShopKeeperID'];
						$zym_31 = $zym_6[0]['Exist'];
						$commission_rate= $zym_6[0]['commissionRate'];
					} else {
						$commission_rate=0;
						for ($i = 0; $i < $zym_29; $i++) {
							$zym_32 .= $zym_6[$i]['commissionRate'] . ',';
							if( $zym_6[$i]['commissionRate'] > $commission_rate){
								$commission_rate= $zym_6[$i]['commissionRate'];
							}
						}
						$zym_32 = substr($zym_32, 0, -1);
						$zym_27 = explode(',', $zym_32);
						$zym_27 = array_unique($zym_27);
						$zym_26 = array_search(max($zym_27), $zym_27);
						$zym_28 = $zym_6[$zym_26]['CampaignID'];
						$zym_30 = $zym_6[$zym_26]['ShopKeeperID'];
						$zym_31 = $zym_6[$zym_26]['Exist'];
					}
					if ($zym_26 == '') {$zym_26=0;}
					if ($zym_6[$zym_26]['commissionRate'] >= $zym_64['commission_rate']) {
						$zym_21 = 'http://pub.alimama.com/pubauc/applyForCommonCampaign.json';
						$zym_20 = array('_tb_token_' => $zym_61, 'applyreason' => $applyreason, 'campId' => $zym_28, 'keeperid' => $zym_30, 't' => $zym_13[0]);
						$zym_20 = http_build_query($zym_20);
						$zym_19 = curl_init();
						$zym_22 = 1000;
						curl_setopt($zym_19, CURLOPT_URL, $zym_21);
						curl_setopt($zym_19, CURLOPT_REFERER, 'http://www.alimama.com/index.htm');
						curl_setopt($zym_19, CURLOPT_POST, true);
						curl_setopt($zym_19, CURLOPT_HTTPHEADER, array('Cookie:{' . $zym_10 . '}'));
						curl_setopt($zym_19, CURLOPT_POSTFIELDS, $zym_20);
						curl_setopt($zym_19, CURLOPT_RETURNTRANSFER, 1);
						curl_setopt($zym_19, CURLOPT_CONNECTTIMEOUT, $zym_22);
						$zym_23 = curl_exec($zym_19);
						curl_close($zym_19);
					}
					$soid['sellerId']=$zym_64['sellerId'];
					if ($zym_6[$zym_26]['commissionRate'] >= $zym_64['commission_rate']) {
						$zym_63['commission_rate']=$commission_rate;
						$zym_63['tk'] = 1;
						$zym_63['que'] = 1;
						$this->item_mod->where($soid)->save($zym_63);
						$zym_38++;
					}else{
						$zym_63['click_url']='';
						$zym_63['que'] = 2;
						$this->item_mod->where($soid)->save($zym_63);
						$zym_43++;
					}
					for($i=0;$i<count($zym_6);$i++){
						$YJ = $YJ .' - '.$zym_6[$i]['commissionRate'];
					}
					$cookie='有效'.$zym_6[$zym_26]['commissionRate'].$YJ;
					$YJ = '';
				}else{
					$cookie='失效';
				}
			}
			$zym_44++;
		} else {
			$this->ajaxReturn(0, '您设置的条件下没有数据，请重新设置或清除缓存！');
		}
		F('totalcoll', $zym_44);
		F('okcoll', $zym_38);
		F('nocoll', $zym_43);
		if ($zym_44 >= $zym_41) {
			F('totalcoll', NULL);
			F('okcoll', NULL);
			F('nocoll', NULL);
			$this->ajaxReturn(0, '申请完成！');
		}
		$zym_25['title'] = '申请定向计划- 购优惠';
		if ($cookie=='失效') {$zym_25['title'] = '0';}
		$this->assign('CheckItemCount', $zym_41);
		$this->assign('totalcoll', $zym_44);
		$this->assign('okcoll', $zym_38);
		$this->assign('nocoll', $zym_43);
		$this->assign('cookie', $cookie);
		$zym_24 = $this->fetch('info');
		$this->ajaxReturn(1, $zym_25, $zym_24);
	}
}