<div class="dialog_content">
<form action="{:u('message/add')}" method="post" name="myform" id="info_form"  enctype="multipart/form-data" style="margin-top:10px;">
<div class="common-form">
      <table width="100%" cellpadding="2" cellspacing="1" class="table_form">
        <tr>
          <th width="80">管理员 :</th>
          <td>{$_SESSION['admin']['username']}</td>
        </tr>	
        <tr>
          <th>接收人 :</th>
          <td>
          	<textarea name="to_name" style="width:250px;height:70px;"></textarea>
          	<p class="gray">每行填写一个会员名，不填则为全部会员</p>
          </td>
        </tr>
        <tr id="custom">
          <th>信息内容 :</th>
          <td><textarea name="info" style="width:350px;height:80px;"></textarea></td>
        </tr>                     
      </table>
</div>
</form>
</div>
<script>
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	
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