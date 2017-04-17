<?php
/**
 * 广告挂件
 * 模板调用方法 {:R('advert/index', array($id), 'Widget')}
 */
class advertWidget extends Action {

    public function index($id) {
        $id = intval($id);
		$bmap['id'] = $id;
		$bmap['status'] = 1;

		if(C('yh_site_cache')){
			$md_id = md5(implode("-",$bmap));
			$file = 'adboard_'.$md_id;
			if(false === $board_info = S($file)){
				$board_info = M('adboard')->where($bmap)->find();
				S($file,$board_info);
			}
		}else{
			$board_info = M('adboard')->where($bmap)->find();
		}

        if (!$board_info) {
            return false;
        }
        $tpl_cfg = include dirname(__FILE__).'/advert/'.$board_info['tpl'].'.config.php';
        $time_now = time();
        $map['board_id'] = $id;
        $map['start_time'] = array('elt', $time_now);
        $map['end_time'] = array('egt', $time_now);
        $map['status'] = '1';
        $limit = $tpl_cfg['option'] ? '' : '1';

		if(C('yh_site_cache')){
			$amap = $map;
			$amap['limit'] = $limit;
			$md_id = md5(implode("-",$amap));
			$file = 'ad_'.$md_id;
			if(false === $ad_list = S($file)){
				$ad_list = M('ad')->field('id,type,name,url,content,desc,extimg,extval')->where($map)->order('ordid')->limit($limit)->select();
				S($file,$ad_list);
			}
		}else{
			$ad_list = M('ad')->field('id,type,name,url,content,desc,extimg,extval')->where($map)->order('ordid')->limit($limit)->select();
		}

        foreach ($ad_list as $key=>$val) {
            $ad_list[$key]['html'] = $this->_get_html($val, $board_info);
        }
		$board_info['height']= 'height:'.$board_info['height'].'px';
		$adheight = $board_info['height'];
		$this->assign('adheight', $adheight);
        $this->assign('board_info', $board_info);
        $this->assign('ad_list', $ad_list);
        $this->display(dirname(__FILE__).'/advert/'.$board_info['tpl'].'.tpl');
    }

    private function _get_html($ad, $board_info) {
        $html = $ad['content'];
        $size_html = '';
        $board_info['width'] && $size_html .= 'width="'.$board_info['width'].'"';
        $board_info['height'] && $size_html .= ' height="'.$board_info['height'].'"';
        switch ($ad['type']) {
            case 'image':
                $html  = '<a title="'.$ad['name'].'" href="'.U('advert/tgo',array('id'=>$ad['id'])).'" target="_blank">';
                $html .= '<img alt="'.$ad['name'].'" src="'.__ROOT__.'/data/upload/advert/'.$ad['content'].'" '.$size_html.'>';
                $html .= '</a>';
                break;
        }
        return $html;
    }
}