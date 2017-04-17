			<div class="bigdeal">
				<ul>
				<volist name="items_list" id="item" key="i" mod="4">
					<li class="<eq name="mod" value="3"> last</eq>">
						<div class="deal dealbig">
							<h3 class="stnmclass"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank"><img class="lazyload" data-original="{$item.pic_url}_300x300.jpg" /></a><span></span><em class="shem"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a></em></h3>
							<div class="beauty_pro_info">
								<p class="quan">
								<span class="float-l">优惠券 <i>{$item.quan}</i> 元</span>
								<span class="float-r">已有 <i>{$item.volume}</i> 人购买</span>
								</p>
								<p class="price">
								<span class="n-price float-l">券后价：<b style="background-color:yellow;"><i class="currency">¥</i>{$item.coupon_price}</b></span>
								<span class="float-r">正常售价：<i class="currency">¥</i>{$item.price}</span>
								<a class="buy-btn" href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">去购买</a>
								</p>
							</div>
						</div>
					</li>
				</volist>
				</ul>
				<div style="clear:both;"></div>
			</div>