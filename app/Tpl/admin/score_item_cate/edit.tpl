<!--编辑禁止IP-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:u('score_item_cate/edit')}" method="post">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<tr>
			<th width="80">名称 :</th>
			<td><input type="text" name="name" id="name" value="{$info.name}" class="input-text"></td>
		</tr>
        <tr>
			<th width="100">排序值 :</th>
			<td><input type="text" name="ordid" id="ordid" class="input-text" size="10" value="{$info.ordid}"></td>
		</tr>
		<tr>
			<th>{:L('enabled')} :</th>
			<td>
				<label><input type="radio" name="status" class="radio_style" value="1" <if condition="$info.status eq 1"> checked="checked"</if>> {:L('yes')}</label>
				<label class="ml10"><input type="radio" name="status" class="radio_style" value="0" <if condition="$info.status eq 0"> checked="checked"</if>> {:L('no')}</label>
			</td>
		</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>
<script>
var check_name_url = "{:U('score_item_cate/ajax_check_name', array('id'=>$info['id']))}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#name").formValidator({onshow:lang.please_input+'名称',onfocus:lang.please_input+'名称'}).inputValidator({min:1,onerror:lang.please_input+'名称'}).ajaxValidator({
	    type : "get",
		url : check_name_url,
		datatype : "json",
		async:'false',
		success : function(result){	
            if(result.status == 0){
                return false;
			}else{
                return true;
			}
		},
		onerror : '名称已存在',
		onwait : lang.connecting_please_wait
	}).defaultPassed();
	
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
});
</script>