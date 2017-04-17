<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">订单详情</h1>
</div>
<form id="info_form" action="{:u('score_order/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
<table width="100%" cellspacing="0" class="table_form">
	<tr>
		<th width="80">商品名称 :</th>
		<td width="40%"><a href="/index.php?m=gift&a=detail&id={$info.item_id}" target="_blank">{$info.item_name}</a> &nbsp;<a href="http://detail.tmall.com/item.htm?id={$info.iid}" target="_blank">淘宝购买</a></td>
		<th>消耗积分 :</th>
		<td>{$info.order_score}</td>
	</tr>
	<tr>
		<th>会员名称 :</th>
		<td>{$info.uname}</td>
		<th>下单时间 :</th>
		<td>{$info.add_time|date="Y-m-d H:i:s",###}</td>
	</tr>
	<tr>
		<th>物流公司 :</th>
		<td><input name="ems_name" type="text" id="ems_name" value="{$info.ems_name}" style="width:150px;" class="input-text"></td>
		<th>运单号码 :</th>
		<td><input name="ems_id" type="text" id="ems_id" value="{$info.ems_id}" style="width:150px;" class="input-text"></td>
	</tr>
	<tr>
		<th>真实姓名 :</th>
		<td>{$info.realname}</td>
		<th>电话号码 :</th>
		<td>{$info.mobile}</td>
	</tr>
	<tr>
		<th>通信地址 :</th>
		<td>{$info.address}</td>
		<th>电子邮箱 :</th>
		<td>{$info.email}</td>
	</tr>
	<tr>
		<th>订单状态：</th>
		<td>
			<input name="status" value="0" id="status_not" type="radio" class="radio" <if condition="$info['status'] eq 0">checked</if>>
			<label class="radio_lalel" for="status_not">未发货</label>&nbsp;&nbsp;
			<input name="status" value="1" id="status" type="radio" class="radio" <if condition="$info['status'] eq 1">checked</if>>
			<label class="radio_lalel" for="status">已发货</label>&nbsp;&nbsp;
			<input name="status" value="2" id="statuss" type="radio" class="radio" <if condition="$info['status'] eq 2">checked</if>>
			<label class="radio_lalel" for="statuss">订单异常</label>&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<th>备注 :</th>
		<td colspan="4">
			<textarea id="remark" name="remark" style="width:50%; height:50px;">{$info.remark}</textarea>
                </td>
	</tr>
</table>
		<div class="mt10"><input type="submit" value="确定" id="dosubmit" name="dosubmit" class="smt mr10"></div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
<input type="hidden" name="id" id="id" value="{$info.id}" />
</form>
<include file="public:footer" />
</body>
</html>