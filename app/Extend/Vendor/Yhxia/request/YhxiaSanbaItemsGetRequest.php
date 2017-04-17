<?php
/**
 * TOP API: yhxia.sanba.items.get request
 * @author Yhxia 8mob.COM
 * 2013-12-03 13:00:00
 */
class YhxiaSanbaItemsGetRequest
{

	private $fields;

	private $pageNo;

	private $cid;

	private $sort;

	private $time;

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

	public function setPageNo($pageNo)
	{
		$this->pageNo = $pageNo;
		$this->apiParas["page_no"] = $pageNo;
	}

	public function getPageNo()
	{
		return $this->pageNo;
	}

	public function setSort($sort)
	{
		$this->sort = $sort;
		$this->apiParas["sort"] = $sort;
	}

	public function setCid($cid)
	{
		$this->cid = $cid;
		$this->apiParas["cid"] = $cid;
	}
	
	public function getCid()
	{
		return $this->cid;
	}

	public function getSort()
	{
		return $this->sort;
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
		return "yhxia.sanba.items.get";
	}
	
	public function getApiParas()
	{
		return $this->apiParas;
	}
	
	public function check()
	{
		RequestCheckUtil::checkNotNull($this->fields,"fields");
	}
	
	public function putOtherTextParam($key, $value) {
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}
