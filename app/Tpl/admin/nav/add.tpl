<!--菜单添加-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('nav/add')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th width="100">{:L('nav_name')} :</th>
            <td><input type="text" name="name" id="J_name" class="input-text"></td>
        </tr>
        <tr>
            <th>{:L('alias')}</th>
            <td><input type="text" name="alias" class="input-text"></td>
        </tr>
        <tr>
            <th>{:L('nav_link')} :</th>
            <td><input type="text" name="link" id="J_link" class="input-text" size="30"></td>
        </tr>
        <tr>
            <th>{:L('nav_type')} :</th>
            <td>
                <label><input type="radio" name="type" class="radio_style" value="main" checked="checked">&nbsp;{:L('nav_type_main')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="type" class="radio_style" value="top">&nbsp;{:L('nav_type_top')}</label>
            </td>
        </tr>
        <tr>
            <th>{:L('nav_target')} :</th>
            <td>
                <label><input type="radio" name="target" class="radio_style" value="1">&nbsp;{:L('yes')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="target" class="radio_style" value="0" checked="checked">&nbsp;{:L('no')}</label>
            </td>
        </tr>
        <tr>
            <th>{:L('enabled')} :</th>
            <td>
                <label><input type="radio" name="enabled" class="radio_style" value="1" checked="checked">&nbsp;{:L('open')}&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="enabled" class="radio_style" value="0">&nbsp;{:L('close')}</label>
            </td>
        </tr>
    </table>
    </form>
</div>

<script>
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({ onshow:lang.please_input+lang.nav_name, onfocus:lang.please_input+lang.nav_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_name});
	$("#J_link").formValidator({ onshow:lang.please_input+lang.nav_link, onfocus:lang.please_input+lang.nav_link, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_link});
		
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
})
</script>