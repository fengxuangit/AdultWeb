<!--编辑管理员-->
<div class="dialog_content">
	<form id="info_form" action="{:U('admin/edit')}" method="post">
	<table width="100%" class="table_form">
		<tr>
      		<th width="80">{:L('admin_username')} :</th>
      		<td><input type="text" name="username" id="J_username" class="input-text" value="{$info.username}"></td>
    	</tr>
    	<tr> 
      		<th>{:L('password')} :</th>
      		<td><input type="password" name="password" id="J_password" class="input-text"></td>
    	</tr>
    	<tr>
      		<th>{:L('cofirmpwd')} :</th>
      		<td><input type="password" name="repassword" id="J_repassword" class="input-text"></td>
    	</tr>
      <tr>
        <th>{:L('admin_email')} :</th>
        <td><input type="text" name="email" class="input-text" value="{$info.email}" size="30"></td>
      </tr>
    	<tr>
      		<th>{:L('admininrole')} :</th>
      		<td>
      			<select name="role_id">
        			<volist name="role_list" id="val">
        			<option value="{$val.id}" <if condition="$val['id'] eq $info['role_id']">selected="selected"</if>>{$val.name}</option>
            		</volist>
        		</select>
      		</td>
    	</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>

<script>
var check_name_url = "{:U('admin/ajax_check_name', array('id'=>$info['id']))}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});

	$("#J_username").formValidator({ onshow:lang.please_input+lang.admin_username, onfocus:lang.please_input+lang.admin_username}).inputValidator({ min:1, onerror:lang.please_input+lang.admin_username}).ajaxValidator({type:"get", url:check_name_url, datatype:"html", async:'false', success:function(data){	if( data == "1" ){return true;}else{return false;}}, onerror:lang.admin_name_exists, onwait:lang.connecting_please_wait}).defaultPassed();
	$("#J_password").formValidator({ empty:true, onshow:lang.not_edit_password, onfocus:lang.password+lang.between_6_to_20}).inputValidator({ min:6, max:20, onerror:lang.password+lang.between_6_to_20});
	$("#J_repassword").formValidator({ empty:true, onshow:lang.not_edit_password, onfocus:lang.cofirmpwd}).compareValidator({desid:"J_password",operateor:"=",onerror:lang.passwords_not_match});

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