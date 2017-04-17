<!--添加栏目-->
<div class="dialog_content col_tab">
<form id="info_form" action="{:U('items_cate/add')}" method="post">
	<ul class="J_tabs tab_but cu_li">
		<li class="current">基本设置</li>
		<li>特殊设置</li>
		<li>SEO设置</li>
	</ul>
	<div class="J_panes">
        <div class="content_list pad_10">
	<table width="100%" class="table_form">
		<tr> 
			<th width="100">{:L('item_cate_parent')} :</th>
			<td>
				<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}" data-selected="{$spid}"></select>
				<input type="hidden" name="pid" id="J_cate_id" />
			</td>
		</tr>
		<tr>
			<th>{:L('item_cate_name')} :</th>
			<td>
				<input type="text" name="name" id="J_name" class="input-text" size="20">
			</td>
		</tr>
		<tr>
			<th>首页显示 :</th>
			<td>
				<label><input type="radio" name="status" value="0" > 不显示</label>&nbsp;&nbsp;
				<label><input type="radio" name="status" value="1" checked> 显示</label>
			</td>
		</tr>
		 <tr>
			<th>排序方式 :</th>
			<td>
				<select name="sort" class="J_tbcats mr10">
					<option value="volume desc"  >销量从高到低</option>
					<option value="volume asc" >销量从低到高</option>
					<optgroup label="──────"></optgroup>
					<option value="coupon_price desc" >价格从高到低</option>
					<option value="coupon_price asc" >价格从低到高</option>
					<optgroup label="──────"></optgroup>
					<option value="coupon_rate  desc" >折扣从高到低</option>
					<option value="coupon_rate  asc"  >折扣从低到高</option>
					<optgroup label="──────"></optgroup>
					<option value="id  desc"  >刚上架排前</option>
					<option value="id  asc"   >刚上架排后</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100">店铺类型 :</th>
			<td>
				<select name="shop_type" class="J_tbcats mr10">
					<option value="" selected>所有</option>
					<option value="B">天猫商城</option>
					<option value="C">淘宝集市</option>
				</select>
			</td>
		</tr>
	</table>
	</div>
	
	<div class="content_list pad_10 hidden">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<tr>
			<th>折扣价 :</th>
			<td>
				最低：<input type="text" name="mix_price"  class="input-text" size="5"> 
				最高：<input type="text" name="max_price"  class="input-text" size="5">
			</td>
		</tr>
		<tr>
			<th>销量 :</th>
			<td>
				最低：<input type="text" name="mix_volume"  class="input-text" size="5"> 
				最高：<input type="text" name="max_volume"  class="input-text" size="5">
			</td>
		</tr>
		<tr>
			<th>商品预告 :</th>
			<td>
				<label><input type="radio" value="0" name="wait_time" checked> 默认</label> &nbsp;&nbsp;
				<label><input type="radio" value="1" name="wait_time"> 只显示未开始</label>
				<label><input type="radio" value="2" name="wait_time"> 不显示未开始</label>
			</td>
		</tr>
		<tr>
			<th>已结束商品 :</th>
			<td>
				<label><input type="radio" value="0" name="end_time" checked> 默认</label> &nbsp;&nbsp;
				<label><input type="radio" value="1" name="end_time"> 不显示已结束商品</label>
			</td>
		</tr>
		<tr class="y-bg">
        		<th>只显示包邮 :</th>
        		<td>
            			<input type="radio" value="0" name="ems" checked> 默认 &nbsp;&nbsp;
            			<input type="radio" value="1" name="ems"> 包邮 &nbsp;&nbsp;
			</td>
    		</tr>
		<tr class="y-bg">
        		<th width="100">是否当前分类 :</th>
        		<td>
            			<label><input type="radio" value="0" name="thiscid" checked> 当前分类</label> &nbsp;&nbsp;
            			<label><input type="radio" value="1" name="thiscid"> 全部分类 </label>
			</td>
    		</tr>
	</table>
	</div>
	<div class="content_list pad_10 hidden">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<tr>
			<th width="100">{:L('seo_title')} :</th>
			<td><input type="text" name="seo_title" class="input-text" style="width:300px;"></td>
		</tr>
		<tr>
			<th>{:L('seo_keys')} :</th>
			<td><input type="text" name="seo_keys" class="input-text" style="width:300px;"></td>
		</tr>
		<tr>
			<th>{:L('seo_desc')} :</th>
			<td><textarea name="seo_desc" style="width:295px; height:50px;"></textarea></td>
		</tr>
	</table>
	</div>
        </div>
	</form>
</div>
<script>
$(function(){
	$('ul.J_tabs').tabs('div.J_panes > div');
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$('#J_name').formValidator({onshow:lang.please_input+lang.items_cate_name,onfocus:lang.please_input+lang.items_cate_name}).inputValidator({min:1,onerror:lang.please_input+lang.items_cate_name});
	
	$('#info_form').ajaxForm({success:complate, dataType:'json'});
	function complate(result){
		if(result.status == 1){
			$.dialog.get(result.dialog).close();
			$.yhxia.tip({content:result.msg});
			window.location.reload();
		} else {
			$.yhxia.tip({content:result.msg, icon:'alert'});
		}
	}
	//分类联动
	$('.J_cate_select').cate_select();
});
</script>