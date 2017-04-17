<?php
/**
 * TOP API: yhxia.sanba.itemcats.get request
 */
class YhxiaSanbaItemcatsGetRequest
{
	private $fields;

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

	

	public function getApiMethodName()
	{
		return "yhxia.sanba.itemcats.get";
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
