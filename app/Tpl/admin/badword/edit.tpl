<!--编辑敏感词-->
<div class="dialog_content">
<form id="info_form" action="{:u('badword/edit')}" method="post">
<div class="common-form">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
        <tr>
			<th width="100">敏感类型 :</th>
			<td>
            <select name="word_type" id="word_type">
            <option value="1" <if condition="$info['word_type'] eq 1">selected="selected"</if>>禁用</option>
			<option value="2" <if condition="$info['word_type'] eq 2">selected="selected"</if>>替换</option>
			<option value="3" <if condition="$info['word_type'] eq 3">selected="selected"</if>>审核</option>
            </select></td>
		</tr>
        <tr>
			<th width="100">敏感词 :</th>
			<td><input type="text" name="badword" id="badword" class="input-text" size="30" value="{$info.badword}"></td>
		</tr>
        <tr>
			<th width="100">敏感词替换 :</th>
			<td><input type="text" name="replaceword" id="replaceword" class="input-text" size="30" value="{$info.replaceword}"></td>
		</tr>
	</table>
</div>
<input type="hidden" name="id" value="{$info.id}" />
</form>
</div>
<script type="text/javascript">
var check_name_url = "{:U('badword/ajax_check_name', array('id'=>$info['id']))}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#badword").formValidator({onshow:"请填写敏感词",onfocus:"请填写敏感词"}).inputValidator({min:1,onerror:"请填写敏感词"}).ajaxValidator({
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
		buttons: $("#dosubmit"),
		onerror : "敏感词已经存在",
		onwait : "正在验证"
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