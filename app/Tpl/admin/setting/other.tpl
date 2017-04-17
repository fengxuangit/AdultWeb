<include file="public:header" />
<!--其他设置-->
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">
<!--
	<tr>
            <th width="150">跳转设置 :</th>
            <td>
                <label><input type="radio" <if condition="C('yh_click_ai') eq '1'">checked="checked"</if> value="1" name="setting[click_ai]"> 不经过爱淘宝</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('yh_click_ai') eq '0'">checked="checked"</if> value="0" name="setting[click_ai]"> 经过爱淘宝</label>
                <span class="gray ml10">根据淘宝规定，建议最好选择经过爱淘宝</span>
            </td>
        </tr>
-->

	<tr>
            <th width="150">一键延时增加时间 :</th>
            <td><input type="text" name="setting[item_add_time]" size="10" class="input-text" value="{:C('yh_item_add_time')}" />&nbsp;&nbsp;小时&nbsp;&nbsp;<span class="gray">一般72小时，三天过期</span></td>
        </tr>


	<tr>
            <th width="150">新浪微博地址 :</th>
            <td><input type="text" name="setting[sina_url]" size="50" class="input-text" value="{:C('yh_sina_url')}" />&nbsp;&nbsp;<span class="gray">新浪微博地址</span></td>
        </tr>

	<tr>
		<th>顶部Logo图片 :</th>
        	<td>
            		<input type="text" name="setting[site_logo]" id="J_logo_img" class="input-text fl mr10" size="50" value="{:C('yh_site_logo')}">
            		<div id="J_logo_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('yh_site_logo')}" id="show_logo_J_img" style="width:240px;height:45px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>
	<tr>
		<th>左侧浮动Logo图片 :</th>
        	<td>
            		<input type="text" name="setting[site_navlogo]" id="J_navlogo_img" class="input-text fl mr10" size="50" value="{:C('yh_site_navlogo')}">
            		<div id="J_navlogo_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('yh_site_navlogo')}" id="show_navlogo_J_img" style="width:104px;height:60px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>
	<tr>
		<th>底部Logo图片 :</th>
        	<td>
            		<input type="text" name="setting[site_flogo]" id="J_flogo_img" class="input-text fl mr10" size="50" value="{:C('yh_site_flogo')}">
            		<div id="J_flogo_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('yh_site_flogo')}" id="show_flogo_J_img" style="width:225px;height:38px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>


	<tr>
		<th>微信二维码 :</th>
        	<td>
            		<input type="text" name="setting[site_weixin]" id="J_weixin_img" class="input-text fl mr10" size="50" value="{:C('yh_site_weixin')}">
            		<div id="J_weixin_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('yh_site_weixin')}" id="show_weixin_J_img" style="width:80px;height:80px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>

	<tr>
		<th>手机地址二维码 :</th>
        	<td>
            		<input type="text" name="setting[site_browser]" id="J_browser_img" class="input-text fl mr10" size="50" value="{:C('yh_site_browser')}">
            		<div id="J_browser_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('yh_site_browser')}" id="show_browser_J_img" style="width:80px;height:80px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>






	<tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    	</tr>
 
       

 
	</table>
 
	</form>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/fileuploader.js"></script>
<script type="text/javascript">
$(function(){
    var upload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_logo_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
        	typeError: lang.upload_type_error,
        	sizeError: lang.upload_size_error,
        	minSizeError: lang.upload_minsize_error,
        	emptyError: lang.upload_empty_error,
        	noFilesError: lang.upload_nofile_error,
        	onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
        	$.yhxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
        	$('#J_logo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_logo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_logo_J_img').attr('src',result.data);
        		$('#J_logo_img').val(result.data);
        	}else{
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });


    var navupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_navlogo_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
        	typeError: lang.upload_type_error,
        	sizeError: lang.upload_size_error,
        	minSizeError: lang.upload_minsize_error,
        	emptyError: lang.upload_empty_error,
        	noFilesError: lang.upload_nofile_error,
        	onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
        	$.yhxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
        	$('#J_navlogo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_navlogo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_navlogo_J_img').attr('src',result.data);
        		$('#J_navlogo_img').val(result.data);
        	}else{
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

    var fupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_flogo_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
        	typeError: lang.upload_type_error,
        	sizeError: lang.upload_size_error,
        	minSizeError: lang.upload_minsize_error,
        	emptyError: lang.upload_empty_error,
        	noFilesError: lang.upload_nofile_error,
        	onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
        	$.yhxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
        	$('#J_flogo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_flogo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_flogo_J_img').attr('src',result.data);
        		$('#J_flogo_img').val(result.data);
        	}else{
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });



    var weixinupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_weixin_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
        	typeError: lang.upload_type_error,
        	sizeError: lang.upload_size_error,
        	minSizeError: lang.upload_minsize_error,
        	emptyError: lang.upload_empty_error,
        	noFilesError: lang.upload_nofile_error,
        	onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
        	$.yhxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
        	$('#J_weixin_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_weixin_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_weixin_J_img').attr('src',result.data);
        		$('#J_weixin_img').val(result.data);
        	}else{
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

    var browserupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_browser_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
        	typeError: lang.upload_type_error,
        	sizeError: lang.upload_size_error,
        	minSizeError: lang.upload_minsize_error,
        	emptyError: lang.upload_empty_error,
        	noFilesError: lang.upload_nofile_error,
        	onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
        	$.yhxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
        	$('#J_browser_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_browser_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_browser_J_img').attr('src',result.data);
        		$('#J_browser_img').val(result.data);
        	}else{
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });






});
</script>
</body>
</html>