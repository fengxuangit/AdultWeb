<!doctype html>
<html lang="zh-CN">
	<head>
		<include file="public:head" />
	</head>
	<body>
		<include file="public:header" />
		<!--body 头部结束-->
		<div class="area" id="contentA">
			<div class="bigdeal">
				<ul>
				<volist name="items_list" id="item" key="i" mod="4">
					<li class="<eq name="mod" value="3"> last</eq>">
						<div class="deal dealbig">
							<h3 class="stnmclass"><a rel="nofollow" isconvert="1" data-itemid="{$item.num_iid}" href="" target="_blank"><img class="lazyload" data-original="{$item.pic_url}_300x300.jpg" /></a><span></span><em class="shem"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a></em></h3>
							<div class="beauty_pro_info">
							<if condition="$item.isq neq '1'">
								<p class="fl"><span class="price_list_sale"> ￥ <em>{$item.coupon_price}</em><del class="f14 gray">￥{$item.price}</del></span>
								<span class="tags">
	                                <span class="imp brand"><em>已售</em>
	                                <span class="imp-name">{$item.volume}件</span>
	                                </span>
                  				</span>
								</p><a rel="nofollow" class="beauty_link_b" isconvert="1" data-itemid="{$item.num_iid}" href="" target="_blank" rel="nofollow">
								<if condition="$item.shop_type eq 'C' "><em class=""></em></if>
								<if condition="$item.shop_type eq 'B' "><em class="tmall"></em></if>
								</a>
							<else/>
								<p class="quan">
								<span class="float-l">优惠券 <i>{$item.quan}</i> 元</span>
								<span class="float-r">已有 <i>{$item.volume}</i> 人购买</span>
								</p>
								<p class="price">
								<span class="n-price float-l">券后价：<b><i class="currency">¥</i>{$item.coupon_price}</b></span>
								<span class="float-r">正常售价：<i class="currency">¥</i>{$item.price}</span>
								<a class="buy-btn" href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">去购买</a>
								</p>
							</if> 
							</div>
							<if condition="$item.isq eq '5'">
							<div class="act">
								<a class="quan-btn" rel="nofollow" href="{$item.quanurl}" target="_blank">点我领券</a>
								<a class="buy-btn" rel="nofollow" href="" isconvert="1" data-itemid="{$item.num_iid}" target="_blank">点我下单</a>
							</div>
							</if>
						</div>
					</li>
				</volist>
				</ul>
				<div style="clear:both;"></div>
			</div>
		
			<div class="page">
				{$page}
			</div>
		</div>

		<div class="clearfix"></div>
		<include file="public:footer" />
	</body>
</html>