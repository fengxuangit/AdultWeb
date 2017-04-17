<include file="public:header" />
<form id="info_form" action="{:u('article/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">{:L('article_basic')}</li>
			<li>{:L('article_seo')}</li>
		</ul>
		<div class="J_panes">
			<div class="content_list pad_10">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('article_cateid')} :</th>
						<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('article_cate/ajax_getchilds')}" data-selected="{$selected_ids}"></select>
                			<input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
					</tr>
		            <tr>
						<th>{:L('article_title')} :</th>
						<td>
		                    <input type="text" name="title" id="J_title" rel="title_color" class="input-text iColorPicker" size="60" value="{$info.title}" style="color:{$info.colors}">
		                    <input type="hidden" value="{$info.colors}" name="colors" id="title_color">
					        <a href="javascript:;" class="color_picker_btn"><img class="J_color_picker" data-it="J_title" data-ic="J_color" src="__STATIC__/images/color.png"></a>
		                </td>
					</tr>
		            <tr>
						<th>{:L('author')} :</th>
						<td><input type="text" name="author" class="input-text" size="30" value="{$info.author}"></td>
					</tr>
		            <tr>
		                <th>详细内容 :</th>
						<td><textarea name="info" id="info" style="width:80%;height:400px;visibility:hidden;resize:none;">{$info.info}</textarea></td>
					</tr>
					<tr>
						<th>{:L('publish')} :</th>
		 				<td>
		                	<label><input type="radio" name="status" class="radio_style" value="1" <if condition="$info.status eq '1'">checked="checked"</if>> {:L('yes')}</label>&nbsp;&nbsp;
							<label><input type="radio" name="status" class="radio_style" value="0" <if condition="$info.status eq '0'">checked="checked"</if>> {:L('no')}</label>
						</td>
					</tr>
				</table>
			</div>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('seo_title')} :</th>
		 				<td><input type="text" name="seo_title" id="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
					</tr>
					<tr>
						<th>{:L('seo_keys')} :</th>
						<td><input type="text" name="seo_keys" id="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
					</tr>
					<tr>
						<th>{:L('seo_desc')} :</th>
						<td><textarea name="seo_desc" id="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
					</tr>
				</table>
			</div>
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"><br /><br /><br /></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
<input type="hidden" name="id" id="id" value="{$info.id}" />
</form>
<include file="public:footer" />
<script src="__STATIC__/js/jquery/plugins/iColorPicker.js"></script>
<script src="__STATIC__/js/jquery/plugins/colorpicker.js"></script>
<script src="__STATIC__/js/kindeditor/kindeditor-min.js"></script>
<script>
$('.J_cate_select').cate_select('请选择');
$(function() {
	KindEditor.create('#info', {
		uploadJson : '{:U("attachment/editer_upload")}',
		fileManagerJson : '{:U("attachment/editer_manager")}',
		allowFileManager : true
	});
	$('ul.J_tabs').tabs('div.J_panes > div');
	
	//颜色选择器
	$('.J_color_picker').colorpicker();
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.yhxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("article/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.yhxia.tip({content:result.msg});
			}
		});
	});
});
</script>
</body>
</html>