<!--编辑栏目-->
<div class="dialog_content">
<form id="info_form" action="{:u('adboard/edit')}" method="post">
<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
    <tr>
        <th width="80">广告位名称 :</th>
        <td><input type="text" name="name" id="name" class="input-text" size="30" value="{$info.name}"></td>
    </tr>
    <tr>
        <th width="80">广告位类型 :</th>
        <td><select name="tpl">
                <volist name="tpl_list" id="val">
                <option value="{$val.alias}" <if condition="$val['alias'] eq $info['tpl']" >selected="selected"</if>>{$val.name}</option>
                </volist>
            </select>
        </td>
    </tr>
    <tr>
        <th>广告位尺寸 :</th>
        <td>宽 : <input type="text" name="width" id="width" class="input-text" size="6" value="{$info.width}"> px&nbsp;&nbsp;&nbsp;&nbsp;高 : <input type="text" name="height" id="height" class="input-text" size="6" value="{$info.height}"></td>
    </tr>
    <tr>
        <th>广告位说明 :</th>
        <td><textarea rows="4" cols="45" class="input-textarea" id="description" name="description">{$info.description}</textarea></td>
    </tr>
    <tr>
        <th>{:L('enabled')} :</th>
        <td>
            <label><input type="radio" name="status" value="1" <if condition="$info.status eq '1'">checked="checked"</if>> {:L('yes')}</label>&nbsp;&nbsp;
            <label><input type="radio" name="status" value="0" <if condition="$info.status eq '0'">checked="checked"</if>> {:L('no')}</label>
        </td>
    </tr>
</table>
<input type="hidden" name="id" id="id" value="{$info.id}" />
</form>
</div>
<script type="text/javascript">
var check_name_url = "{:U('adboard/ajax_check_name')}";
$(function(){
    $.formValidator.initConfig({formid:"info_form",autotip:true});
    $("#name").formValidator({onshow:lang.please_input+lang.adboard_name,onfocus:lang.please_input+lang.adboard_name}).inputValidator({min:1,onerror:lang.please_input+lang.adboard_name}).ajaxValidator({
        type : "get",
        url : check_name_url,
        data: "id="+$('#id').val(),
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
        onerror : lang.adboard_already_exists,
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