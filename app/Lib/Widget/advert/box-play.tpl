<style>
.box-play {margin-top:5px}
.box-play #img-list { position:relative; margin:0 auto;width:100%;{$adheight};  display:none; }
.box-play .img-list li { display:none; position:absolute; left:0; top:0; width:100%; {$adheight}; }
.box-play .img-list li.cur { display:block; }
.box-play .img-list li a { display:block; {$adheight};margin:0 auto; cursor:pointer; background: url("about:blank") repeat scroll 0 0 transparent; }
.box-play .img-list li a:focus { outline:0; }
.box-play i { display: none; position:absolute; cursor: pointer;}
.box-play i.ban-close { width: 30px; height: 30px; top:10px; right:0; background: url(/static/yhquan/images/good/ban-esc.png) no-repeat; }
.box-play i.ban-close:hover { background: url(/static/yhquan/images/good/ban-esc.png) no-repeat 0 -30px; }
.box-play i.ban-open { width:25px; height:18px; right:-25px; top:3px; background: url(/static/yhquan/images/good/open.gif) no-repeat; }
.box-play .count-num { position:absolute; bottom:2px; right:14%; }      
.box-play .count-num li { float:left; _display:inline; margin-left:10px; cursor:default; background: url(/static/yhquan/images/good/switch2.gif) no-repeat -16px 0;width: 15px; height: 15px; border-radius: 10px; background: #fff; opacity: .8; _filter: Alpha(opacity = 80); overflow:hidden; }
.box-play .count-num li.cur { background: #f60; opacity: 1; _filter: Alpha(opacity = 100); }
/*商品列表*/
.main { overflow: visible; position:relative;}
.huan-list{ position: relative; }
.huan-list h3 { padding: 0 0 10px; font-size: 16px; color: #333; float: left; }
.huan-list .more { font-size: 13px; font-weight: normal; float: right; display: inline; margin-right: 5px; display: block; height: 20px; line-height: 23px; float: right; }
</style>

<notempty name="ad_list">
<div class="box-play">
	<div id="img-list">
		<ul class="img-list">
		<volist name="ad_list" id="ad" key="i">
			<li <if condition="$i eq 1">class="cur" </if>style="background:url('{:attach($ad['content'],'advert')}') 49.99% top no-repeat;"><a class="{:C('yh_site_width')}" href="{$ad.url}" target="_blank" hidefocus="true"  alt="{$ad.desc}" ></a></li>
		</volist>
			 
		</ul>
		<ul class="count-num"></ul>
		<div class="{:C('yh_site_width')} bc pr">
			<i class="ban-close" id="close_play" title="关闭幻灯片"></i>
		</div>
	</div>
	<div class="{:C('yh_site_width')} bc pr">
		<i class="ban-open" id="open_play" title="打开幻灯片"></i>
	</div>
</div> 
</notempty>
