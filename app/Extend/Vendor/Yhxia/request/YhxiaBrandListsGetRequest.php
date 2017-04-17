<?php
/**
 * TOP API: yhxia.brand.lists.get request
 * @author Yhxia 8mob.COM
 */
class YhxiaBrandListsGetRequest
{
	private $fields;
	
	private $uid;

	private $time;

	private $page;

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

	public function setUid($uid)
	{
		$this->uid = $uid;
		$this->apiParas["uid"] = $uid;
	}
	
	public function getUid()
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

	public function setPage($page)
	{
		$this->page = $page;
		$this->apiParas["page"] = $page;
	}

	public function getPage()
	{
		return $this->page;
	}


	public function getApiMethodName()
	{
		return "yhxia.brand.lists.get";
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