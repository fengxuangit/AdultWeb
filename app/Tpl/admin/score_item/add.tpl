<include file="public:header" />
<!--添加文章-->
<form id="info_form" action="{:U('score_item/add')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本资料</li>
 
		</ul>
		<div class="J_panes">
			<div class="content_list pad_10">
				<table width="80%" cellspacing="0" class="table_form">
					<tr>
						<th width="80">{:L('article_cateid')} :</th>
						<td>
							<select name="cate_id" id="cate_id">
								<option value="">--请选择分类--</option>
								<volist name="cate_list" id="val">
								<option value="{$val.id}">{$val.name}</option>
								</volist>
							</select>
						</td>
						<th>商品名称 :</th>
						<td><input type="text" name="title" id="J_title" class="input-text" size="30"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><input type="file" name="img" id="img" class="input-text"  style="width:200px;" /></td>
						<th>淘宝网IID :</th>
						<td><input type="text" name="num_iid" id="num_iid" class="input-text" size="10" style="width:200px;" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="price" id="price" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
						<th>折扣价 :</th>
						<td><input type="text" name="coupon_price" id="coupon_price" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
					</tr>
					<tr>
						<th>所需积分 :</th>
						<td><input type="text" name="score" id="score" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>

						<th>库存 :</th>
						<td><input type="text" name="stock" id="stock" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
					</tr>     
					<tr>
						<th>每人限兑换数 :</th>
						<td><input type="text" name="user_num" id="user_num" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
					
						<th>排序值 :</th>
						<td><input type="text" name="ordid" id="ordid" class="input-text" size="10" style="width:200px;"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9.]/g,'')"></td>
					</tr>
					<tr>
						<th>兑换时间 :</th>
						<td>
							<input type="text" name="start_time" id="start_time" class="date" size="18"> - 
							<input type="text" name="end_time" id="end_time" class="date" size="18">
						 </td>
					</tr>
                			<tr>
						<th>推荐理由 :</th>
						<td colspan="4"><textarea name="desc" id="desc" style="width:79%;height:50px;"></textarea></td>
					</tr>
					<tr>
						<th>宝贝详情 :</th>
						<td colspan="4"><textarea name="info" id="info" style="width:80%;height:300px;visibility:hidden;resize:none;"></textarea></td>
					</tr>
				</table>
			</div>
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"><br /><br /><br /></div>
	</div>
</div>
</form>
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script type="text/javascript" src="__STATIC__/js/kindeditor/kindeditor.js"></script>
<script>
$(function() {
	KindEditor.create('#info', {
		allowFileManager : true
	});
});
 
Calendar.setup({
    inputField : "start_time",
    ifFormat   : "%Y-%m-%d %H:%M",
    showsTime  : true,
    timeFormat : "24"
});
Calendar.setup({
    inputField : "end_time",
    ifFormat   : "%Y-%m-%d %H:%M",
    showsTime  : true,
    timeFormat : "24"
});

</script>
</body>
</html>