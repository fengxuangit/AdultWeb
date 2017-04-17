<!--添加角色-->
<div class="dialog_content">
    <form id="info_form" name="info_form" action="{:u('admin_role/add')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="80">{:L('role_name')} :</th>
            <td><input type="text" name="name" id="name" class="input-text"></td>
        </tr>
        <tr>
            <th>{:L('role_desc')} :</th>
            <td><textarea name="remark" id="remark" cols="40" rows="3"></textarea></td>
        </tr>
        <tr>
            <th>{:L('enabled')} :</th>
            <td>
                <input type="radio" name="status" class="radio_style" value="1" checked="checked"> &nbsp;{:L('yes')}&nbsp;&nbsp;&nbsp;
                <input type="radio" name="status" class="radio_style" value="0"> &nbsp;{:L('no')}
            </td>
        </tr>
    </table>
    </form>
</div>
<script>
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});
    $("#name").formValidator({ onshow:lang.please_input+lang.role_name, onfocus:lang.please_input+lang.role_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.role_name});

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