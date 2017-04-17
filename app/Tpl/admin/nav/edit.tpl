<!--编辑菜单-->
<div class="dialog_content">
    <form id="info_form" name="info_form" action="{:U('nav/edit')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="100">{:L('nav_name')} :</th>
            <td><input type="text" name="name" id="J_name" class="input-text" value="{$info.name}"></td>
        </tr>
        <tr>
            <th>{:L('alias')}</th>
            <td>
                <if condition="$info['mod'] neq 'sys'">
                <input type="text" name="alias" class="input-text" value="{$info.alias}">
                <else/>
                {$info.alias}
                </if>
            </td>
        </tr>
        <if condition="$info['mod'] neq 'sys'">
        <tr>
            <th>{:L('nav_link')} :</th>
            <td><input type="text" name="link" id="J_link" class="input-text" size="30" value="{$info.link}"></td>
        </tr>
        </if>
        <tr>
            <th>{:L('nav_type')} :</th>
            <td>
                <label><input type="radio" name="type" class="radio_style" value="main" <if condition="$info['type'] eq 'main'"> checked="checked"</if>>&nbsp;{:L('nav_type_main')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="type" class="radio_style" value="top" <if condition="$info['type'] eq 'top'"> checked="checked"</if>>&nbsp;{:L('nav_type_top')}</label>
            </td>
        </tr>
        <tr>
            <th>{:L('nav_target')} :</th>
            <td>
                <label><input type="radio" name="target" class="radio_style" value="1" <if condition="$info['target'] eq 1"> checked="checked"</if>>&nbsp;{:L('yes')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="target" class="radio_style" value="0" <if condition="$info['target'] eq 0"> checked="checked"</if>>&nbsp;{:L('no')}</label>
            </td>
        </tr>
        <tr>
            <th>{:L('enabled')} :</th>
            <td>
                <label><input type="radio" name="enabled" class="radio_style" value="1" <if condition="$info['enabled'] eq 1"> checked="checked"</if>>&nbsp;{:L('open')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="enabled" class="radio_style" value="0" <if condition="$info['enabled'] eq 0"> checked="checked"</if>>&nbsp;{:L('close')}</label>
            </td>
        </tr>
    </table>
    <input name="id" type="hidden" value="{$info.id}">
    </form>
</div>

<script>
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});
    $("#J_name").formValidator({ onshow:lang.please_input+lang.nav_name, onfocus:lang.please_input+lang.nav_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_name}).defaultPassed();
    $("#J_link").formValidator({ onshow:lang.please_input+lang.nav_link, onfocus:lang.please_input+lang.nav_link, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_link}).defaultPassed();

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