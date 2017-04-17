<!doctype html>
<html>
	<head>
		<include file="public:head" />
		<script type="text/javascript">
			$(window).on("load",function(){
				var winHeight = $(window).height();
				function is_weixin() {
					var ua = navigator.userAgent.toLowerCase();
					if (ua.match(/MicroMessenger/i) == "micromessenger") {
						return true;
					} else {
						return false;
					}
				}
				var isWeixin = is_weixin();
				$("div.buy-wrapper a,div.detail-wrapper a").click(function(){
					if(isWeixin){
						$(".weixin-tip").css("height",winHeight);
						$(".weixin-tip").show();
						return false;
					}
				});
			})
		</script>
		<style type="text/css">
			*{margin:0; padding:0;}
			a{text-decoration: none;}
			img{max-width: 100%; height: auto;}
			.weixin-tip{display:none;position:fixed;left:0;top:0;background:rgba(0,0,0,0.8);filter:alpha(opacity=80);width:100%;height:100%;z-index:100;}
			.weixin-tip p{text-align:center;margin-top:10%;padding:0 5%;position:relative;}
			.weixin-tip .close{color:#fff;padding:5px;font:bold 20px/24px simsun;text-shadow:0 1px 0 #ddd;position:absolute;top:0;left:5%;}
		</style>
	</head>
	<body>
		<div class="weixin-tip">
			<p><img src="/static/wap/images/android_tips.png" alt="在浏览器打开"/><span id="close" title="关闭" class="close" onclick="$(this).closest('div').hide()">×</span> </p>
		</div>
		<div id="load-more">
			<div>
				<div class="main-title clearfix">
					<span class="mui-action-menu mui-pull-left" data-ajax="false" onclick="history.back();" style="font-family: iconfont;color: #FFFFFF;font-size: 37px;line-height: 44px;margin-left: 9px;float: none;position: absolute;z-index: 5;">&#xe600;</span>
					<h1 class="mui-title main-title-text">商品详情</h1>
					<a href="{:C('yh_headerm_html')}" rel="external" class="main-home" data-cnzz-type="51" data-cnzz="0"></a>
				</div>
				<div class="detail-wrapper">
					<div class="img">
						<a href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" rel="nofollow" biz-itemid="{$item.num_iid}" isconvert="1">
							<img src="{$item.pic_url}_640x640.jpg" alt="{$item.title}">
						</a>
						<span><if condition="$item.isq eq '1'">已有{$item.Quan_receive}人领券<else/>已有{$item.volume}人抢购</if></span>
					</div>
					<div class="title-wrapper clearfix"><span class="<if condition="$item.shop_type eq 'B'">tmall<else/>taobao</if>"></span>{$item.title}</div>
					<div class="recommend-wrapper">
						<div class="text"><span>小编推荐</span>{$item.intro}</div>
					</div>
				</div>
				<div class="item-xiangqing">
					<div class="img">
						{$item.desc}
					</div>
				</div>
				<div class="pos-box clearfix">
					<p class="pos-title"><i></i>精品推荐</p>
					<div class="ads-list">
						<yh:item type="orlike" cid="$item['cate_id']">
						<volist name="items_list" id="val" key="i" mod="2">
						<div class="goods-item">
							<a data-transition="slide" href="{:U('item/index',array('id'=>$val['id']))}" class="img ui-link">
								<if condition="$item.isq eq '1'">
								<span class="coupon-wrapper">
									<span class="coupon">独家券</span>
									<span class="price">{$val.quan}元</span>
								</span>
								</if>
								<img src="{$val.pic_url}_290x290.jpg" alt="{$val.title}">
							</a>
							<a data-transition="slide" href="{:U('item/index',array('id'=>$val['id']))}" class="title ui-link">
								<div class="text" style=" color:#777777;">{$val.title}</div>
							</a>
							<div class="price-wrapper">
								<span class="text"><if condition="$item.isq eq '1'">券后<ELSE/>折后</if></span>
								<span class="price">￥{$val.coupon_price}</span>
								<div class="sold-wrapper">
									<span class="sold-num" style="font-size: 10px;">{$val.volume}</span>
									<span class="text" style="font-size: 10px;">人已买</span>
								</div>
							</div>
						</div>
						</volist>
						</yh:item>
					</div>
				</div>
				<div class="buy-wrapper">
					<span class="price"><if condition="$item.isq eq '1'">券后<ELSE/>折扣</if>价：<i>&yen;<b>{$item.coupon_price}</b></i></span>
					<span class="coupon">&yen;{$item.price}</span>
					<a href="<if condition="$item.click_url neq '0'">{$item.click_url}</if>" rel="nofollow" biz-itemid="{$item.num_iid}" isconvert="1" class="buy-btn" target="_blank">去<if condition="$item.shop_type eq 'B'">天猫<else/>淘宝</if></a>
					<if condition="$item.isq eq '1'">
						<a href="{:U('item/quan',array('id'=>$item['id']))}" class="coupon-btn normal-btn ">
							<span class="coupon-btn-l">&yen;<i>{$item.quan}</i>券</span>
							<span class="coupon-btn-r">点击<br />领取</span>
						</a>
					</if>
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