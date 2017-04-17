<?php
/**
 *  API: yhxia.uz.items.coupon.get request
 */
class YhxiaUzItemsCouponGetRequest
{
	private $fields;
	private $uid;
	private $pageNo;
	private $cateId;

	private $time;
	private $apiParas = array();
	


	public function setUid($uid)
	{
		$this->uid = $uid;
		$this->apiParas["uid"] = $uid;
	}

	public function getUid()
	{
		return $this->uid;
	}



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

	public function setCateid($cateid)
	{
		$this->cateId = $cateid;
		$this->apiParas["cate_id"] = $cateid;
	}

	public function getCateid()
	{
		return $this->cateId;
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
		return "yhxia.uz.items.coupon.get";
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
