<!--移动栏目-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('items_cate/move')}" method="post">
	<table width="100%" class="table_form">
		<tr> 
			<th width="90">{:L('item_cate_moveto')} :</th>
			<td><select id="J_cate_select" class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}"></select></td>
		</tr>
	</table>
	<input type="hidden" name="pid" id="J_pid" />
	<input type="hidden" name="ids" value="{$ids}" />
	</form>
</div>
<script>
$(function(){
	$('#info_form').ajaxForm({success:complate,dataType:'json'});
	function complate(result){
		if(result.status == 1){
			$.dialog.get(result.dialog).close();
			$.yhxia.tip({content:result.msg});
			window.location.reload();
		} else {
			$.yhxia.tip({content:result.msg, icon:'alert'});
		}
	}
	$('#J_cate_select').cate_select({field:'J_pid'});
});
</script>