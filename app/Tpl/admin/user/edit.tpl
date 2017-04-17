<!--编辑会员-->
<div class="dialog_content">
	<form id="info_form" action="{:u('user/edit')}" method="post">
	<table width="100%" class="table_form">
		<tr>
			<th width="100">会员昵称 :</th>
			<td>{$info.username}</td>
		</tr>
	    <tr>
			<th>会员头像 :</th>
			<td>
            	<input type="text" name="img" id="J_img" class="input-text fl mr10" size="30" value="{$info.img}">
            	<div id="J_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
                <img src="{:avatar($info['id'], 32)}" />
				<notempty name="info['img']"><span class="attachment_icon J_attachment_icon" file-type="image" file-rel="{:avatar($info['id'], 32)}"><img src="__ROOT__/statics/images/filetype/image_s.gif" /></span></notempty>
            </td>
		</tr>
        <tr>
			<th>会员邮箱 :</th>
			<td><input type="text" name="email" id="email" class="input-text" value="{$info.email}" size="30"></td>
		</tr>
		<tr>
			<th>出生日期 :</th>
			<td><input type="text" name="birthday" id="birthday" class="date input-text" value="{$info.byear}-{$info.bmonth}-{$info.bday}" size="27"></td>
		</tr>
		<tr>
        	<th>性别 :</th>
            <td>
            	<label><input type="radio" name="gender" value="1" <if condition="$info.gender eq 1">checked</if>> 男</label>&nbsp;&nbsp;
				<label><input type="radio" name="gender" value="0" <if condition="$info.gender eq 0">checked</if>> 女</label>
            </td>
        </tr>
        
        <tr>
			<th>新密码 :</th>
			<td><input type="password" name="password" class="input-text" size="30">
            <label class="gray">&nbsp;&nbsp;不修改则留空</label>
            </td>
		</tr>
        <tr>
			<th>重复密码 :</th>
			<td><input type="password" name="repassword" class="input-text" size="30"></td>
		</tr>
        
	    <tr>
			<th>{:L('enabled')} :</th>
			<td>
				<label><input type="radio" name="status" value="1" <if condition="$info.status eq 1">checked</if>> {:L('yes')}</label>&nbsp;&nbsp;
				<label><input type="radio" name="status" value="0" <if condition="$info.status eq 0">checked</if>> {:L('no')}</label>
			</td>
		</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>
<script src="__STATIC__/js/fileuploader.js"></script>
<script>
Calendar.setup({
    inputField : "birthday",
    ifFormat   : "%Y-%m-%d",
    showsTime  : true,
    timeFormat : "24"
});
var check_name_url = "{:U('user/ajax_check_name', array('id'=>$info['id']))}";
var check_email_url = "{:U('user/ajax_check_email', array('id'=>$info['id']))}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#username").formValidator({onshow:'请填写用户名',onfocus:'请填写用户名'}).inputValidator({min:1,onerror:'请填写用户名'}).ajaxValidator({
	    type : "get",
		url : check_name_url,
		datatype : "json",
		async:'false',
		success : function(result){	
            if(result.status == 0){
                return false;
			}else{
                return true;
			}
		},
		onerror : '用户已经存在',
		onwait : '正在检测'
	}).defaultPassed();
	$("#email").formValidator({onshow:"请填写邮箱",onfocus:"请填写邮箱"}).inputValidator({min:1,onerror:"请填写邮箱"}).regexValidator({regexp:"email",datatype:"enum",onerror:"邮箱格式错误"}).ajaxValidator({
	    type : "get",
		url : check_email_url,
		datatype : "json",
		async:'false',
		success : function(result){	
            if(result.status == 0){
                return false;
			}else{
                return true;
			}
		},
		onerror : '邮箱已经存在',
		onwait : '正在检测'
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
	
	//上传图片
    var uploader = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "{:U('user/ajax_upload_imgs')}",
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
        	$('#J_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
        		$('#J_img').val(result.data);
        	} else {
        		$.yhxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });
});
</script>