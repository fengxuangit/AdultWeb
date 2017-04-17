<?php
/**
 * TOP API: yhxia.uz.list.get request
 * @author Yhxia 8mob.COM
 */
class YhxiaUzCateListGetRequest
{
	private $fields;

	private $uid;	

	private $apiParas = array();
	
	public function setFields($fields)
	{
		$this->fields = $fields;
		$this->apiParas["fields"] = $fields;
	}
	

	public function getFields()
	{
		return $this->fields;
	}

	public function setuid($uid)
	{
		$this->uid = $uid;
		$this->apiParas["uid"] = $uid;
	}

	public function getuid()
	{
		return $this->uid;
	}

	public function setTime($time)
	{
		$this->time = $time;
		$this->apiParas["time"] = $time;
	}

	public function getTime()
	{
		return $this->time;
	}


	public function getApiMethodName()
	{
		return "yhxia.uz.cate.list.get";
	}
	
	public function getApiParas()
	{
		return $this->apiParas;
	}
	
	public function check()
	{
		
	}
	
	public function putOtherTextParam($key, $value) {
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}

}