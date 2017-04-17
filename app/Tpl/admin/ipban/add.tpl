<!--添加禁止IP-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:u('ipban/add')}" method="post">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<input type="hidden" name="type" value="ip" />
        <tr>
			<th width="80">IP地址 :</th>
			<td><input type="text" name="name" id="name" class="input-text"></td>
		</tr>
		<tr>
			<th width="80">有效期 :</th>
			<td><input type="text" name="expires_time" id="expires_time" class="date"></td>
		</tr>
	</table>
	</form>
</div>
<script>
Calendar.setup({
    inputField : "expires_time",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
var check_name_url = "{:U('ipban/ajax_check_name')}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#name").formValidator({onshow:lang.please_input+'IP地址',onfocus:lang.please_input+'IP地址'}).inputValidator({min:1,onerror:lang.please_input+'IP地址'});
	
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