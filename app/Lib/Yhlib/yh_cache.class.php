<?php

final class yh_cache{

	static public function getkey($where = array(),$order = '', $p = 1){
		$where['order'] = $order;
		$where['p'] = $p;
		$idkey = md5(implode("-",$where)).'.cache';
		return $idkey;
	}

	static public function getfile($page,$idkey){
		$cachepath = C('yh_site_cachepath');
		if(!$cachepath){
			$cachepath = '';
		}
		$file = $cachepath.'/'.$page.'_'.$idkey;
		return $file;
	}

    static public function getcontent($file){
		$cachetime = C('yh_site_cachetime');
		if(file_exists($file) && (time() - date('U',@filemtime($file))) < $cachetime){
			$result =@file_get_contents($file);
		}else{
			return false;
		}
        return $result;
    }
}