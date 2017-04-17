<!doctype html>
<html>
	<head>
		<include file="public:head" />
		<css file="__STATIC__/css/yhxia/item.css" />
	</head>
	<body>
		<include file="public:header" />
		<!--商品详细-->
		<div class="mains">
			<div class="piece jiu_goods">
				<div class="piece_box">
					<div class="jiu_bd jiu_top fl">
						<div class="item_containt">
							<div class="jiu_goodsinfo">
								<div class="goods_con" znid="101z3l">
									<div class="pic">
										<if condition="$item.class eq 'tag_wait' ">
											<a href="javascript:void()">
												<else />
												<a isconvert="1" data-itemid="{$item.num_iid}" href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" rel='nofollow' target="_blank" title="{$item.title}">
										</if>
										<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" width="400px" height="400px">
										</a>
									</div>
									<div class="goods_detail">
										<if condition="$item.class eq 'tag_wait' ">
												<h3><a href="javascript:void()"   title="{$item.title}">{$item.title}</a></h3>
											<else />
												<h3><a isconvert="1" data-itemid="{$item.num_iid}" href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" rel='nofollow' target="_blank" title="{$item.title}">{$item.title}</a></h3>
										</if>
										<div class="desc"> <span>推荐理由：</span><strong>{$item.intro}</strong></div>

												<div class="item-like">
														<div class="price_tag"><i>￥</i>{$item.coupon_price}<span class="ori_price">￥{$item.price}</span></div>
														<div class="volume_tag fr">已有 <strong>{$item.volume}</strong> 人在抢购该商品</div>
												</div>
												<dl class="item-last-time">	<dt>离抢购结束还剩：</dt>
													<dd class="timer" id="end_date_0" data-time="{$item.coupon_end_time}"></dd>
												</dl>
												<div class="text-wrap">
												<if condition="$item.isq eq '1'">
													<span class="text-wrap-span">
													已领券<i>{$item.Quan_receive}</i>张，手慢无
													</span>
												</if>
													<span>已有<i>{$item.volume}</i>人购买</span>
												</div>
												<div class="buy-step clearfix">
													<div class="buy-step-text">购买流程</div>
													<if condition="$item.isq eq '1'">
													<div class="buy-step-first">
														<span>
															<i>内部优惠券</i>
															<b _hover-ignore="1">¥{$item.quan}</b>
														</span>
														<a rel="nofollow" class="coupon-btn" href="{$item.quanurl}" target="_blank" title="领券后请点击右边按钮下单" _hover-ignore="1">点击领取</a>
													</div>
													<div class="double-arrow">
														<span style="margin-left: -12px;"></span>
													</div>
													</if>
													<a class="buy-step-sec buy-btn" rel="nofollow" href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" isconvert="1" data-itemid="{$item.num_iid}" target="_blank">享优惠，去<if condition="$item.shop_type eq 'C' ">淘宝<else/>天猫</if>下单</a>
												</div>
										<div class="shareto">
										如果您喜欢此宝贝，记得分享给您的朋友，一起享优惠。
											<div class="sharebaidu">
												<div class="bshare-custom">
													<a title="分享到QQ空间" class="bshare-qzone"></a>
													<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
													<a title="分享到人人网" class="bshare-renren"></a>
													<a title="分享到腾讯微博" class="bshare-qqmb"></a>
													<a title="分享到网易微博" class="bshare-neteasemb"></a>
													<a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
												</div>
												<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
												<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
											</div>
											<span class="share_txt">分享到：</span>
										</div>
									</div>
								</div>
								<!--{$item.intro}-->{$item.desc}
							</div>

							<div class="jiu_shi jiu_item">
									<h3>您还会喜欢...</h3>
								<ul class="shijiu_list">
									<a data-type="10" biz-itemid="{$item.num_iid}" data-tmpl="720x220" data-tmplid="143" data-rd="1" data-style="2" data-border="1" href="#"></a>
									<yh:item type="orlike" cid="$item['cate_id']">
										<volist name="items_list" id="val" key="i" mod="3">
											<li <if condition="($i eq '1' OR $i eq '5' OR $i eq '9')">style="margin-left:0px;"</if>>
												<a target="_blank" href="{:U('item/index',array('id'=>$val['id']))}" class="pic">
													<img src="{$val['pic_url']}" style="display: inline;">
												</a>
												<p class="title_name"><a target="_blank" href="{:U('item/index',array('id'=>$val['id']))}">{$val.title}</a>
												</p>
												<p class="detail"><span class="price">￥{$val.coupon_price}</span><a class="go_action" target="_blank" href="{:U('item/index',array('id'=>$val['id']))}">去抢购&gt;&gt;</a>
												</p>
											</li>
										</volist>
									</yh:item>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<include file="public:footer" />
		<script src="__STATIC__/js/comment.js"></script>
		<script type="text/javascript">
			function show_date_time(end,style,id){
			    today=new Date(); 
				timeold=((end)*1000-today.getTime()); 
				if (timeold < 0) {
			        return;
			    }
			    setTimeout("show_date_time("+end+','+style+','+id+")", 100); 
			    sectimeold=timeold/1000;
				secondsold=Math.floor(sectimeold); 
				msPerDay=24*60*60*1000;
				e_daysold=timeold/msPerDay;
				daysold=Math.floor(e_daysold); 
				e_hrsold=(e_daysold-daysold)*24;
				hrsold=Math.floor(e_hrsold); 
				e_minsold=(e_hrsold-hrsold)*60;
				minsold=Math.floor((e_hrsold-hrsold)*60); 
				e_seconds = (e_minsold-minsold)*60;
				seconds=Math.floor((e_minsold-minsold)*60); 
				ms = e_seconds-seconds;
				ms = new String(ms);
				ms1 = ms.substr(2,1);
				ms2 = ms.substr(2,2);
				hrsold1=daysold*24+hrsold;
				if(style == 1){
					$("#end_date_"+id).html('<em>'+(hrsold1<10?'0'+hrsold1:hrsold1)+"</em>小时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"</em>秒");
				}else if(style == 2){
					$("#end_date_"+id).html('<em>'+daysold+"</em>天<em>"+(hrsold<10?'0'+hrsold:hrsold)+"</em>时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"</em>秒");
				}else if(style == 3){
					$("#end_date_"+id).html("<em>"+(hrsold1<10?'0'+hrsold1:hrsold1)+"</em>小时<em>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em>"+(seconds<10?'0'+seconds:seconds)+"."+ms1+"</em>秒");
				}else{
					$("#end_date_"+id).html(daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"小 时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒."+ms2);
				}
			}
			$(".timer").each(function() {
			        var reg = /^[0-9]+$/;
			        var timer = $(this).attr('data-time');
			        if (reg.test(timer)) {
			            show_date_time(timer, 3 , 0);
			        }
				});
		</script>
	</body>

</html>