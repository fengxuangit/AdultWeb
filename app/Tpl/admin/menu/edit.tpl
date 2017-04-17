<!--编辑菜单-->
<div class="dialog_content">
    <form id="info_form" name="info_form" action="{:U('menu/edit')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="100">{:L('menu_parentid')} :</th>
            <td>
            <select name="pid">
                <option value="0">{:L('no_parent_menu')}</option>
                {$select_menus}
            </select>
          </td>
        </tr>
        <tr>
        <th>{:L('menu_name')} :</th>
            <td><input type="text" name="name" id="name" class="input-text" value="{$info.name}"></td>
        </tr>
        <tr>
            <th>{:L('module_name')} :</th>
            <td><input type="text" name="module_name" id="module_name" class="input-text" value="{$info.module_name}"></td>
        </tr>
        <tr>
            <th>{:L('action_name')} :</th>
            <td><input type="text" name="action_name" id="action_name" class="input-text" value="{$info.action_name}"></td>
        </tr>
        <tr> 
            <th>{:L('att_data')} :</th>
            <td><input type="text" name="data" id="data" class="input-text" value="{$info.data}"></td>
        </tr>
        <tr>
            <th>{:L('remark')} :</th>
            <td><textarea name="remark" id="remark" cols="40" rows="3">{$info.remark}</textarea></td>
        </tr>
        <tr>
            <th>{:L('menu_display')} :</th>
            <td>
                <label><input type="radio" name="display" class="radio_style" value="1" <if condition="$info.display eq 1">checked="checked"</if>> {:L('yes')}&nbsp;&nbsp;</label>
                <label><input type="radio" name="display" class="radio_style" value="0" <if condition="$info.display eq 0">checked="checked"</if>> {:L('no')}</label>
            </td>
        </tr>
    </table>
    <input name="id" type="hidden" value="{$info.id}">
    </form>
</div>

<script>
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});

    $("#name").formValidator({ onshow:lang.please_input+lang.menu_name, onfocus:lang.please_input+lang.menu_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.menu_name}).defaultPassed();
    $("#module_name").formValidator({ onshow:lang.please_input+lang.module_name, onfocus:lang.please_input+lang.module_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.module_name}).defaultPassed();
    $("#action_name").formValidator({ onshow:lang.please_input+lang.action_name, onfocus:lang.please_input+lang.action_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.action_name}).defaultPassed();

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