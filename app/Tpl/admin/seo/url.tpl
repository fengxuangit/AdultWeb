<include file="public:header" />
<!--SEO设置-->
<div class="pad_lr_10">
	<form id="info_form" action="{:u('seo/url')}" method="post">
	<table width="100%" class="table_form">
        <tr>
            <th width="150">{:L('url_model')} :</th>
            <td>
                <select name="url_model">
                    <option value="0" <if condition="$config['URL_MODEL'] eq 0">selected="selected"</if>> {:L('url_model_0')} </option>
                    <option value="1" <if condition="$config['URL_MODEL'] eq 1">selected="selected"</if>> {:L('url_model_1')} </option>
                    <option value="2" <if condition="$config['URL_MODEL'] eq 2">selected="selected"</if>> {:L('url_model_2')} </option>
                </select>
            </td>
        </tr>
        <tr>
            <th>{:L('url_suffix')} :</th>
            <td><input type="text" name="url_suffix" class="input-text" size="10" value="{$config.URL_HTML_SUFFIX}"></td>
        </tr>
        <tr>
            <th>{:L('url_depr')} :</th>
            <td><input type="text" name="url_depr" class="input-text" size="4" value="{$config.URL_PATHINFO_DEPR}"></td>
        </tr>
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
</body>
</html>