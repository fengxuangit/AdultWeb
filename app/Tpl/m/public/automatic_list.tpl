<div class="goods-list">
	<volist name="items_list" id="item" key="i" mod="2">
	<div class="goods-item">
		<a data-transition="slide" href="{:U('item/index',array('id'=>$item['id']))}" class="img QtkSelfClick">
		{$item.coupon_start_time|newicon}
			<if condition="$item.isq eq '1'">
			<span class="coupon-wrapper">
				<span class="coupon">独家券</span>
				<span class="price">{$item.quan}元</span>
			</span>
			</if> 
			<img src="{$item.pic_url}_230x230.jpg" alt="">
		</a>
		<a data-transition="slide" href="{:U('item/index',array('id'=>$item['id']))}" class="title QtkSelfClick">
			<div class="text" style=" color:#777777;">{$item.title}</div>
		</a>
		<div class="price-wrapper">
			<span class="text"><if condition="$item.isq eq '1'">券后<else/>折扣价</if></span>
			<span class="price">￥{$item.coupon_price}</span>
			<div class="sold-wrapper">
				<span class="sold-num" style="font-size: 10px;">{$item.volume}</span>
				<span class="text" style="font-size: 10px;">人已买</span>
			</div>
		</div>
	</div>
	</volist>
</div>