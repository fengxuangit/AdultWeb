			<div class="bigdeal">
				<ul>
				<volist name="items_list" id="item" key="i" mod="4">
					<li class="<eq name="mod" value="3"> last</eq>">
						<div class="deal dealbig">
							<h3 class="stnmclass"><a rel="nofollow" isconvert="1" data-itemid="{$item.num_iid}" href="" target="_blank"><img class="lazyload" data-original="{$item.pic_url}_300x300.jpg" /></a><span></span><em class="shem"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a></em></h3>
							<div class="beauty_pro_info">
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
							</div>
						</div>
					</li>
				</volist>
				</ul>
				<div style="clear:both;"></div>
			</div>