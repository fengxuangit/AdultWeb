	<div id="back_top" class="back_top">
			<a href="javascript:;" class="call-top" title="返回顶部"></a><span class="call-check" title="联系客服"></span>
			<a class="call-mark" title="收藏网站" href="javascript:$.addBookmark(jQuery('.call-mark'),'{:C('yh_site_name')}','{:C('yh_site_url')}');"></a>
			<div class="hide">
				
			</div>
		</div>
		<a id="checkTrap" class="checkTrap" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin={:C('yh_qq')}&site=qq&menu=yes"></a>
		
		<div class="foot">
			<div class="white_bg">
				<div class="xd_info1" style="border-bottom:none;height:40px;">
					<div class="left-info">
						<div class="menu_index">
							<a href="/" rel="nofollow">首页</a>|
							<a href="{:U('help/read',array('id'=>1))}" rel="nofollow"><font color=red><strong>什么是折上折？</strong></font></a>|
							<a href="{:U('help/read',array('id'=>2))}" rel="nofollow">联系我们</a>|
							<a href="{:U('help/read',array('id'=>3))}" rel="nofollow">免责申明</a>|
							<a href="{:U('help/read',array('id'=>4))}" rel="nofollow">商家合作</a>|
							{:C('yh_statistics_code')}
						</div>
					</div>
				</div>
				<div style="    width: 1080px;overflow: hidden;height:40px;">
				<div class="xd_info" style="width: 680px;">
					<div class="refer">
						<div class="follow bdsharebuttonbox">
							<ul>
									<a href="#" style="margin: 0px 6px 6px 0;" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
									<a href="#" style="margin: 0px 6px 6px 0;" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
									<a href="#" style="margin: 0px 6px 6px 0;" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
									<a href="#" style="margin: 0px 6px 6px 0;" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
									<a href="#" style="margin: 0px 6px 6px 0;" class="bds_more" data-cmd="more"></a>
							</ul>
						</div>
						<script>
							window._bd_share_config={
								"common":{
									"bdSnsKey":{},
									"bdText":"最近发现了一个领内部优惠券的网站，都是限时限量抢购，一般人享受不到的！性价比超高哦，分享给大家，保证你会惊喜滴！",
									"bdMini":"2",
									"bdMiniList":false,
									"bdPic":"",
									"bdStyle":"0",
									"bdSize":"32"
								},
								"share":{}
							};
							with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
						</script>
						<div class="miibeian">
							<p><a href="{:C('yh_site_url')}" target="_blank" rel="nofollow">{:C('yh_site_name')}</a>
								<br />Copyright © 2010 - 2016 {:C('yh_site_name')}</p>
						</div>
					</div>
				</div>
					<div class="foot_right">
						<a href="/" target="_blank">
							<img src="__STATIC__/images/logo1.png" />
						</a>
					</div>
				</div>
				<div class="links"><span>友情链接：</span>
					<div class="links_list_box">
			    		<yh:link type="lists" status="1">
								<li>
						<volist name="data" id="val">
							<eq name="mod" value="10"></li><li></eq>
			    			<a href="{$val.url}" target="_blank">{$val.name}</a>
						</volist>
						</li>
						</yh:link>	
							
						</ul>
					</div>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<script type="text/javascript">
			$(function() {
			    $(".bigdeal .dealbig").live('mouseenter', function() {
			        $(this).addClass("deal_h");
			    });
			    $(".bigdeal .dealbig").live('mouseleave', function() {
			        $(this).removeClass("deal_h");
			    });
			});
				
			$(".lazyload").lazyload({
				"placeholder": "/static/images/logo.jpg"
			});

		var FTXIAER = {
		    root: "__ROOT__",
		    uid: "<?php echo $visitor['id'];?>", 
			chaxunurl: "{:U('ajax/check_item')}",
		    url: {}
		};
		var lang = {};
		<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
		</script>
		<yh:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/yhxia.js,__STATIC__/js/front.js,__STATIC__/js/goback.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/js/comment.js,__STATIC__/js/comm.js" />