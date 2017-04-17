<!doctype html>
<html>
	<head>
		<include file="public:head" />
	</head>
	<body>
		<div id="load-more"><div>
		<iframe id="quaniframe" name="quaniframe" scrolling="no" src="{$item.quanurl}" frameborder="0" style="padding: 0px; width: 100%;"></iframe>
		<img src="{$item.pic_url}_120x120.jpg" style="position: fixed;bottom: 0;left: 0;z-index: 200;border: 5px solid #ddd;width:120px;height:120px;">
		<div class="buy-wrapper">
			<a href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" rel="nofollow" biz-itemid="{$item.num_iid}" isconvert="1" class="buy-btn" target="_blank" style="margin-left:0px;">去抢购</a>
			<span style="position: relative;float: right;height: 38px;line-height: 19px;margin-top: 6px;padding: 0 10px;text-align: left; background-color: #FFF1E7;text-align: center;">领取优惠券后<br>购买只需<i>&yen;{$item.coupon_price}</i>元</span>
		</div>
		<div style="width: 100%;color: #fff;position:absolute;left:0px;top:2px;margin-left: 10px;background-color: #eee;text-align: center;    line-height: 46px;color: #333;font-size: 16px;font-weight: normal;">{$item.quan}元优惠券</div>
		<a href="{:U('item/index',array('id'=>$item['id']))}" style="width: 60px%;color: #fff;position:absolute;left:0px;top:2px;margin-left: 10px;background-color: #eee;text-align: center;    line-height: 46px;color: #333;font-size: 16px;font-weight: normal;">返回</a>
		</div>
		</div>
		<script src="__STATIC__/js/comment.js"></script>
		<script type="text/javascript">$("#quaniframe").attr("height",document.body.scrollHeight-50);</script>
	</body>
</html>