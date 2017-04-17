<?php
/**
 * 友情链接标签解析
 */
class linkTag {
    /**
     * 友情链接列表
     * @param array $options 
     */
    public function lists($options) {
		$file = 'link';
		if(C('yh_site_cache')){
			if(false === $data = S($file)){
				$map['status'] = '1' ;
				$data = M('link')->where($map)->order('ordid asc')->select();
				S($file,$data);
			}
		}else{
			$map['status'] = '1' ;
			$data = M('link')->where($map)->order('ordid asc')->select();
		}
        return $data;
    }
}