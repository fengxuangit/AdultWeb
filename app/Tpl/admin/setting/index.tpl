<include file="public:header" />
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
	<table width="100%" class="table_form">
        <tr>
            <th width="150">{:L('site_name')} :</th>
            <td><input type="text" name="setting[site_name]" class="input-text" size="30" value="{:C('yh_site_name')}"></td>
        </tr>
		<tr>
            <th width="150">{:L('site_url')} :</th>
            <td><input type="text" name="setting[site_url]" class="input-text" size="30" value="{:C('yh_site_url')}">
				<span class="gray ml10">电脑版首页网址必须以 http:// 开头,以 / 结尾</span>
			</td>
        </tr>
        <tr>
            <th width="150">WAP地址 :</th>
            <td>
                <input type="text" name="setting[headerm_html]" class="input-text" size="30" value="{:C('yh_headerm_html')}">
				<span class="gray ml10">手机版首页网址必须以 http:// 开头,以 / 结尾</span>
			</td>
        </tr>
        <tr>
            <th>{:L('site_icp')} :</th>
            <td><input type="text" name="setting[site_icp]" class="input-text" size="30" value="{:C('yh_site_icp')}">
				<span class="gray ml10">备案号如：闽ICP备08010074号-1 </span>
            </td>
        </tr>
		<tr>
            <th>QQ号码 :</th>
            <td><input type="text" name="setting[qq]" class="input-text" size="30" value="{:C('yh_qq')}"></td>
        </tr>
		<tr>
            <th width="150">手机客户端 :</th>
            <td>
                <input type="text" name="setting[app_kehuduan]" class="input-text" size="50" value="{:C('yh_app_kehuduan')}" /></td>
        </tr>
   <!--<tr>
            <th width="150">采集器秘钥 :</th>
            <td>
                <input type="text" name="setting[robots_key]" class="input-text" size="50" value="{:C('yh_robots_key')}" /><span class="red ml10">必须填写</span><br>
	            </td>
        </tr>-->

		<tr>
            <th width="150">网站授权码 :</th>
            <td>
                <input type="text" name="setting[site_secret]" class="input-text" size="50" value="{:C('yh_site_secret')}" /><span class="red ml10">必须填写</span><br>
	            </td>
        </tr>
    	<tr>
            <th width="150">淘宝订单号 :</th>
            <td>
                <input type="text" name="setting[dingdan]" class="input-text" size="50" value="{:C('yh_dingdan')}" /><span class="red ml10">必须填写</span><br>
	            <span class="gray ml10">购买程序对应的淘宝订单号，否则网站无法正常使用</span></td>
        </tr>
		
		<tr>
			<th width="150">阿里妈妈Cookie :</th>
			<td><textarea rows="6" cols="80" name="setting[cookie]">{:C('yh_cookie')}</textarea></td>
		</tr>
	
<!--
		<tr>
            <th width="150">Header代码 :</th>
            <td>
                <textarea rows="6" cols="80" name="setting[header_html]">{:C('yh_header_html')}</textarea>
                <span class="gray ml10"><br>
                需要在header添加内容的可以加在这里，这个可以不填</span></td>
        </tr>
-->
        <tr>
            <th>{:L('statistics_code')} :</th>
            <td>
                <textarea rows="6" cols="80" name="setting[statistics_code]">{:C('yh_statistics_code')}</textarea> 
				<span class="gray ml10"><br>统计代码需要你自己去 CNZZ 或 百度 申请 <a href="http://www.cnzz.com/" target="_blank">http://www.cnzz.com/</a>  <a href="http://tongji.baidu.com" target="_blank">http://tongji.baidu.com</a></span>
			</td>
           
      </tr>

		<tr>
            <th width="150">淘点金代码 :</th>
            <td>
                <textarea rows="6" cols="80" name="setting[taojindian_html]">{:C('yh_taojindian_html')}</textarea>
              <span class="gray ml10"><br>
              若不会使用，请参照：<a href="http://www.52jscn.com/web/2015/06/8936.shtml" target="_blank">http://www.52jscn.com/web/2015/06/8936.shtml</a></span>
            </td>
        </tr>

		 <tr>
            <th width="150">{:L('ipban_switch')} :</th>
            <td>
                <label><input type="radio" <if condition="C('yh_ipban_switch') eq '1'">checked="checked"</if> value="1" name="setting[ipban_switch]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('yh_ipban_switch') eq '0'">checked="checked"</if> value="0" name="setting[ipban_switch]"> {:L('close')}</label>
                <span class="gray ml10">如果本站没有添加禁止IP地址库，建议关闭该功能提升网址性能</span>
            </td>
        </tr>
    	<tr>
        	<th>{:L('site_status')} :</th>
        	<td>
            	<label><input type="radio" class="J_change_status" <if condition="C('yh_site_status') eq '1'">checked="checked"</if> value="1" name="setting[site_status]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_status" <if condition="C('yh_site_status') eq '0'">checked="checked"</if> value="0" name="setting[site_status]"> {:L('close')}</label>
            </td>
    	</tr>
        <tr id="J_closed_reason" <if condition="C('yh_site_status') eq 1">class="hidden"</if>>
        	<th>{:L('closed_reason')} :</th>
        	<td><textarea rows="4" cols="50" name="setting[closed_reason]" id="closed_reason">{:C('yh_closed_reason')}</textarea></td>
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