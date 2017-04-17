<include file="public:header" />
<div class="pad_lr_10">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">优惠劵采集授权码：</th>
            <td><input type="text" id="secret" class="input-text" size="40" value="{$secret}"></td>
            <th width="150">保存授权码：</th>
            <td><input onclick="secret()" type="button" value="确定"class="mr10 smt "></td>
		</tr>
		<tr>
            <th width="150">采集分类 :</th>
            <td><select class="J_quan_select mr10" onclick="$('#J_quan_cate_id').val($(this).val());">
		<option value="">--请选择--</option><option value="1">男女服装</option><option value="2">母婴必备</option><option value="3">化妆用品</option><option value="4">居家日用</option><option value="5">鞋包配饰</option><option value="6">美食小吃</option><option value="7">文体车品</option><option value="8">数码家电</option>
		</select></td>

            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">对应分类 :</th>
            <td><input onclick="CJ($('#J_quan_cate_id').val(),$('#J_cate_id').val())" type="button" value="添加" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
	<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
	<input type="hidden" name="quan_cate_id" id="J_quan_cate_id" value="0" />
	<input type="hidden" name="PD" id="PD" value="NO" />
<div class="J_tablelist table_list">
	<table width="100%" cellspacing="0">
		<thead>
			<tr>
				<th width="25">ID</th>
				<th width="25">ID:采集分类</th>
				<th width="25">ID:入库分类</th>
				<th width="25">操作</th>
			</tr>
		</thead>
		<tbody>
			<volist name="cinfo" id="item_cate">
			<tr>
				<td align="center">{$i}</th>
				<td align="center">{$item_cate.cate}:{$item_cate.name}</td>
				<td align="center">{$item_cate.cate1}:{$item_cate.name1}</td>
				<td align="center"><input value="删除" type="button" onclick="SC('{$item_cate.id}')" class="input3"></td>
			</tr>
			</volist>
		</tbody>
	</table>
	<table width="100%" cellspacing="0" class="table_form">
		<th width="20%">执行提示 :</th>
		<td id="TS" width="80%">优惠券采集器为自动采集，无需任何设置，也无需改动已配置好的分类。<if condition="$check neq '1'">{$check}</if></td>
	</table>
</div>
</div>
<script src="/static/js/jquery/jquery.js"></script>
<script src="/static/js/admin.js"></script>
<script>
function secret(secret){
	secret=$('#secret').val()
	$.getJSON("{:U('youhunquancaiji/secret')}",{secret:secret}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('保存成功！');
		}else{
			$("#TS").append('保存失败！');
		}
	});
}
function SC(id){
	$.getJSON("{:U('youhunquancaiji/delete')}",{id:id}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('删除成功！');
		}else{
			$("#TS").append('删除失败！');
		}
		window.location.reload();
	});
}
function CJ(cate,cate1){
	$.getJSON("{:U('youhunquancaiji/add')}",{cate:cate,cate1:cate1}, function(result){
		$("#TS").empty();
		if (result.ts == 'OK'){
			$("#TS").append('添加成功！');
		}else{
			$("#TS").append('添加失败！');
		}
		window.location.reload();
	});
} 

$(function(){
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>