<notempty name="ad_list">
<div class="mainbanner">
	<div class="mainbanner_window">
		<ul id="slideContainer">
			<volist name="ad_list" id="ad" key="i">
			<li><a href="{$ad.url}"><img src="{:attach($ad['content'],'advert')}" width="1000" height="250" alt="{$ad.desc}"  /></a></li>
			</volist>
		</ul>
	</div>
	<ul class="mainbanner_list">
		<volist name="ad_list" id="ad" key="i">
		<li><a href="javascript:void(0);">{$i}</a></li>
		</volist>
	</ul>
</div>
</notempty>
