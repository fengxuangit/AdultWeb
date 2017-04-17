<include file="public:header" />
<!--模板样式-->
<div class="subnav">
	<h1 class="title_2 line_x">模板样式设置 - (仅针对6.0版官方模版) 折800的模板请选择标版正方形</h1>
</div>

<div class="pad_lr_10">
<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">
		<tr>
			<th width="150">网站宽度 :</th>
			<td>
				<select name="setting[site_width]" id="setting[site_width]">
					<option value="w1100" <if condition="C('yh_site_width')  eq 'w1100'">selected="selected"</if>>宽版</option>
					<option value="w980" <if condition="C('yh_site_width') eq 'w980'">selected="selected"</if>>标准版</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="150">图片尺寸 :</th>
			<td>
				<select name="setting[site_wc]" id="setting[site_wc]">
					<option value="w1100" <if condition="C('yh_site_wc')  eq 'w1100'">selected="selected"</if>>宽版-正方形</option>
					<option value="wc1100" <if condition="C('yh_site_wc') eq 'wc1100'">selected="selected"</if>>宽版-长方形</option>
					<option value="w1005" <if condition="C('yh_site_wc')  eq 'w1005'">selected="selected"</if>>标准版-正方形</option>
					<option value="wc1005" <if condition="C('yh_site_wc') eq 'wc1005'">selected="selected"</if>>标准版-长方形</option>
				</select>
			</td>
		</tr>
		<tr>
        		<th></th>
        		<td><span class="gray">注意：设置长方形图片 最好网站宽度为标准版的</span></td>
    		</tr>
		<tr>
        		<th></th>
        		<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    		</tr>
	</table>
</form>
</div>
<include file="public:footer" />
</body>
</html>