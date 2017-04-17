<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">注册登陆</h1>
</div>
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form">
        <tr>
            <th width="150">用户注册 :</th>
            <td>
                <label class="mr10"><input type="radio" class="J_change_status" <if condition="C('yh_reg_status') eq '1'">checked="checked"</if> value="1" name="setting[reg_status]"> {:L('open')}</label>
                <label><input type="radio" class="J_change_status" <if condition="C('yh_reg_status') eq '0'">checked="checked"</if> value="0" name="setting[reg_status]"> {:L('close')}</label>
            </td>
        </tr>
        <tr id="J_closed_reason" <if condition="C('yh_reg_status') eq 1">class="hidden"</if>>
            <th>关闭注册原因 :</th>
            <td><textarea rows="3" cols="80" name="setting[reg_closed_reason]">{:C('yh_reg_closed_reason')}</textarea></td>
        </tr>
        <tr>
            <th>{:L('user_intro_default')} :</th>
            <td><input type="text" name="setting[user_intro_default]" class="input-text" value="{:C('yh_user_intro_default')}" size="40" /></td>
        </tr>
        <tr>
            <th>{:L('reg_protocol')} :</th>
            <td><textarea rows="6" cols="80" name="setting[reg_protocol]">{:C('yh_reg_protocol')}</textarea></td>
        </tr>
        <tr>
        	<th></th>
        	<td>
                <input type="hidden" name="menuid"  value="{$menuid}"/>
                <input type="submit" class="smt mr10" value="{:L('submit')}"/>
            </td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('.J_change_status').live('click', function(){
        if($(this).val() == '0'){
            $('#J_closed_reason').fadeIn();
        }else{
            $('#J_closed_reason').fadeOut();
        }
    });
});
</script>
</body>
</html>