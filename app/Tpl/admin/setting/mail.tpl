<include file="public:header" />
<!--邮件服务器设置-->
<div class="common-form">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">
    	<tr class="y-bg">
        	<th width="150">{:L('mail_send_mode')} :</th>
        	<td>
            	<input type="radio" <if condition="C('yh_mail_server.mode') eq 'mail'">checked="checked"</if> value="mail" name="setting[mail_server][mode]"> {:L('mail_function_mode')} &nbsp;&nbsp;
            	<input type="radio" <if condition="C('yh_mail_server.mode') eq 'smtp'">checked="checked"</if> value="smtp" name="setting[mail_server][mode]"> {:L('smtp_mode')} &nbsp;&nbsp;<span class="gray">{:L('mail_mode_desc')}</span>
            </td>
    	</tr>
    </table>
    <table width="100%" class="table_form contentWrap">
        <tr>
        	<th width="150">{:L('smtp_host')} :</th>
        	<td><input type="text" name="setting[mail_server][host]" class="input-text" size="30" value="{:C('yh_mail_server.host')}">
       	    </td>
    	</tr>
        <tr>
        	<th>{:L('smtp_port')} :</th>
        	<td><input type="text" name="setting[mail_server][port]" class="input-text" value="{:C('yh_mail_server.port')}"></td>
    	</tr>
        <tr>
        	<th>{:L('smtp_from')} :</th>
        	<td><input type="text" name="setting[mail_server][from]" class="input-text" size="30" value="{:C('yh_mail_server.from')}"></td>
    	</tr>
        <tr>
        	<th>{:L('smtp_auth_username')} :</th>
        	<td>
            	<input type="text" name="setting[mail_server][auth_username]" class="input-text" size="30" value="{:C('yh_mail_server.auth_username')}">
            </td>
    	</tr>
        <tr>
        	<th>{:L('smtp_auth_password')} :</th>
        	<td><input type="password" name="setting[mail_server][auth_password]" class="input-text" size="30" value="{:C('yh_mail_server.auth_password')}"></td>
    	</tr>
        <tr>
        	<th>{:L('test_email')} :</th>
        	<td>
            	<input type="text" id="J_email" class="input-text" size="30" value="">
            	<input type="button" id="J_mail_test" value="{:L('send_test_mail')}" class="btn">
                <span id="J_mail_test_tip"></span>
            </td>
    	</tr>
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('#J_mail_test').live('click', function(){
        var email = $('#J_email').val();
        if(email == ''){
            $('#J_mail_test_tip').addClass('red').html('{:L('please_input')}{:L('test_email')}');
            return false;
        }
        $.getJSON('{:U('setting/ajax_mail_test')}', {email:email}, function(result){
            if(result.status == 1){
                $('#J_mail_test_tip').removeClass('red').addClass('green').html('{:L('send_test_email_successed')}');
            }else{
                $('#J_mail_test_tip').addClass('red').html('{:L('send_test_email_failured')}');
            }
        });
    });
});
</script>
</body>
</html>