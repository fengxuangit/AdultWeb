<div class="dialog_content pad_10">
	<div class="loading">
		共有采集器[ <b class="red">{$robots_count}</b> ] 个， 当前正在采集第[ <b class="red">{$rids}</b> ]个  当前用时:[ <b class="red">{$result_data.times}</b> ]<br />
		正在采集：{$date.name}采集器,需采集[ <b class="red">{$date.page}</b> ]页,使用 <if condition="$date['http_mode'] eq 0"> 开放平台采集 <else/> 淘宝网采集 </if><br />
 
		正在采集第 [ <b class="blue">{$result_data.p}</b> ] 页，本页成功添加 [<span class="blue">{$result_data.coll}</span> ]个商品，本次成功采集 [<span class="blue">{$result_data.totalcoll}</span>]个商品 
	</div>
	<notempty name="msg">
	 
	</notempty>
	<notempty name="result_data['totalnum']">
	<div align="center">
	本页采集到 [<span class="blue">{$result_data.thiscount}</span>]个商品	共有：{$result_data.totalnum} 条数据
	</div>
	</notempty>
	<div align="center">
	采集中请勿关闭本窗口...
	</div>
</div>