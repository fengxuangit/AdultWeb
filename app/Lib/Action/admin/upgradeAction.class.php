<?php

class upgradeAction extends BackendAction{

	private $_tbconfig = null;
    public function _initialize( ){
        parent::_initialize( );
        $this->_mod_setting = D("setting");
		$api_config = M('items_site')->where(array('code' => 'yhxia'))->getField('config');
        $this->_tbconfig = unserialize($api_config);
    }

    public function index(){
        exit();
    }

    public function version(){

       $result = $this->http("http://www.laicaiji.com/update/down.php?v=".FTX_RELEASE."&t=".date("Ymdh",time()),true);
       $result = json_decode($result,true);
		
        if($result && $result['status'] == 1){
			if(class_exists("ZipArchive")){
				$durl = $result['url'];
				$newfname = date('YmdHis',time()).".zip";
				$width = 500;
				$file = fopen($durl,"rb");
				if($file){
					$filesize = -1;
					$headers = get_headers( $durl, 1 );
					if(!array_key_exists( "Content-Length", $headers ) ){
						$filesize = 0;
					}
					$filesize = $headers['Content-Length'];
					$total = $filesize;
					$pix = $width / $total;
					$newf = fopen( $newfname, "wb" );
					while ($newf && !feof($file)){
						$data = fread( $file, 8192 );
						$downlen += strlen( $data );
						fwrite($newf, $data, 8192 );
					}
					if($file){
						fclose($file);
					}
					if($newf){
						fclose($newf);
					}
				}else{
					$this->ajaxReturn( 0, "没有更新的文件-8" );
				}
				@ob_flush();
				@flush();
				$zip_filepath = $newfname;
				if(!is_file($zip_filepath)){
					$this->ajaxReturn( 0, "没有更新的文件-9" );
				}
				$zip = new ZipArchive();
				$rs = $zip->open( $zip_filepath );
				if($rs!== TRUE){
					$this->ajaxReturn( 0, "更新失败" );
				}
				$destination = ".";
				$zip->extractTo($destination);
				$zip->close();
				if(file_exists($newfname)){
					unlink( $newfname );
				}

				if(file_exists('update.txt')){
					$this->_database_mod = new Model();
					$sql_str = file('update.txt');
					$sql_str = str_replace("\r", '', implode('', $sql_str));
					$ret = explode(";\n", $sql_str);
					$ret_count = count($ret);
					for ($i = 0; $i < $ret_count; $i++)
					{
						$ret[$i] = trim($ret[$i], " \r\n;"); 
						if (!empty($ret[$i]))
						{
							$this->_database_mod->query($ret[$i]);
						}
					}
					unlink('update.txt');
				}
				$this->ajaxReturn( 1 ,"更新成功,请手动清空缓存！");
			}else{
				$this->ajaxReturn( 0, "请开启支持在线更新相关类：php.ini中 php_zip.dll扩展");
			}
		}else{
            $this->ajaxReturn( 0, $result['msg'] );
        }
    }

    public function http($url,$c = false){
        set_time_limit(0);
        if($c == false){
	        $result = file_get_contents($url);
        }else{
            $curl = curl_init();
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_HEADER, false);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $result = curl_exec($curl);
            curl_close($curl);
        }
        if(empty($result)){
            $result = false;
        }
        return $result;
    }
}
?>
