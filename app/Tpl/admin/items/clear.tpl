<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>

<div class="subnav">
    <h1 class="title_2 line_x">清空所有宝贝(<font color="red">新</font>)</h1>
</div>
<div class="pad_lr_10" >
<form action="{:u('items/clear')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th>确认删除：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：确认是否要删除，删除的数据不可恢复！)</font> 
				</td>
			</tr>
	                <tr>
				<th width="120">清空所有宝贝:</th>
				<td>
					<input type="hidden" name="action" value="clear" />
					<input type="submit" name="dosubmit" class="smt mr10" value="清空" id="dosubmit"/>
				</td>
			</tr>
		</tbody>
	</table>           
</form>
</div>

<div class="subnav">
    <h1 class="title_2 line_x">清空已过期宝贝</h1>
</div>
<div class="pad_lr_10" >
<form action="{:u('items/clear')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th>确认删除：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：确认是否要删除，删除的数据不可恢复！)</font> 
				</td>
			</tr>
	                <tr>
				<th width="120">清空已过期宝贝:</th>
				<td>
					<input type="hidden" name="action" value="outtime" />
					<input type="submit" name="dosubmit" class="smt mr10" value="清空" id="dosubmit"/>
				</td>
			</tr>
		</tbody>
	</table>           
</form>
</div>

<div class="subnav">
    <h1 class="title_2 line_x">清空未审核宝贝</h1>
</div>
<div class="pad_lr_10" >
<form action="{:u('items/clear')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th>确认删除：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：确认是否要删除，删除的数据不可恢复！)</font> 
				</td>
			</tr>
	                <tr>
				<th width="120">清空未审核宝贝:</th>
				<td> 
					<input type="hidden" name="action" value="notpass" />
					<input type="submit" name="dosubmit" class="smt mr10" value="清空" id="dosubmit"/>
				</td>
			</tr>
		</tbody>
	</table>           
</form>
</div>

<div class="subnav">
    <h1 class="title_2 line_x">条件删除</h1>
</div>
<div class="pad_lr_10" >
<form action="{:u('items/delete_search')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th width="120">活动结束时间：</th>
				<td>
					<input type="text" name="time_start" id="time_start" class="date" size="12" value="{$time_start}">
					-
					<input type="text" name="time_end" id="time_end" class="date" size="12" value="{$time_end}">
				</td>
			</tr>
			<tr>
				<th>商品分类：：</th>
				<td>
					<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" />
				</td>
			</tr>
	                <tr>
				<th>审核状态：</th>
				<td>
					<select name="status">
						<option value="" selected>-所有状态-</option>
						<option value="1">已审核</option>
						<option value="0">未审核</option>
					</select>
				</td>
			</tr>
	                <tr>
				<th>关 键 字：</th>
				<td><input name="keyword" type="text" class="input-text" size="25" value="{$keyword}" /></td>
			</tr>
	                <tr>
				<th>活动价格范围：</th>
				<td>
					<input type="text" name="min_price" size="5" class="input-text" value="{$min_price}" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')" />&nbsp;-&nbsp;<input type="text" name="max_price" size="5" class="input-text" value="{$max_price}" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')" />&nbsp;元
				</td>
			</tr>
	                <tr>
				<th>确认删除：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：确认是否要删除，删除的数据不可恢复！)</font> 
				</td>
			</tr>
		</tbody>
	</table>
	<div class="mt10"><input type="submit" name="dosubmit" class="smt mr10" value="删除" id="dosubmit"/></div>
</form>
</div>

<include file="public:footer" />
<script language="javascript" type="text/javascript">
	Calendar.setup({
		inputField     :    "time_start",
		ifFormat       :    "%Y-%m-%d",
		showsTime      :    'true',
		timeFormat     :    "24"
	});
	Calendar.setup({
		inputField     :    "time_end",
		ifFormat       :    "%Y-%m-%d",
		showsTime      :    'true',
		timeFormat     :    "24"
	});

$('.J_cate_select').cate_select('请选择');
</script>
</body>
</html>