<!--安装商品接口-->
<div class="dialog_content" style="padding:0 20px;">
	<form id="info_form" action="{:U('items_site/install')}" method="post">
    <table width="100%" class="table_form">
        <tr>
            <th>{:L('item_site_code')} :</th>
            <td>{$info.code}</td>
        </tr>
        <tr>
            <th>{:L('item_site_name')} :</th>
            <td><input type="text" name="name" id="J_name" class="input-text" size="30" value="{$info.name}"></td>
        </tr>
        <tr style="display:none">
            <th>{:L('item_site_domain')} :</th>
            <td><input type="text" name="domain" id="J_domain" class="input-text" size="30" value="{$info.domain}"></td>
        </tr>
        <tr style="display:none">
            <th>{:L('item_site_url')} :</th>
            <td><input type="text" name="url" id="J_url" class="input-text" size="30" value="{$info.url}"></td>
        </tr>
        <volist name="info.config" id="config">
        <tr>
            <th>{$config.text} :</th>
            <td>
                <switch name="config.type">
                    <case value="text">
                        <input type="text" name="{$key}" class="input-text" size="30">&nbsp;&nbsp;<span class="gray">{$config.desc}</span>
                    </case>
                    <case value="select">
                        <select name="{$config_key}">
                            <volist name="config.items" id="item" key="item_key">
                            <option value="{$item_key}">{$item}</option>
                            </volist>
                        </select>
                    </case>
                </switch>
            </td>
        </tr>
        </volist>
    </table>
    <input type="hidden" name="code" value="{$info.code}" />
    <input type="hidden" name="desc" value="{$info.desc}" />
    <input type="hidden" name="author" value="{$info.author}" />
    </form>
</div>

<script>
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({ onshow:lang.please_input+lang.item_site_name, onfocus:lang.please_input+lang.item_site_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.item_site_name});
 	
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