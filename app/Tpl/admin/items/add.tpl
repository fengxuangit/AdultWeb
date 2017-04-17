<include file="public:header" />
<!--添加商品-->
<div class="subnav">
    <h1 class="title_2 line_x">添加商品</h1>
</div>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<form id="info_form" action="{:u('items/add')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
			<li>SEO设置</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th></th>
				<td><img id="J_pic_url_img"  width="200"  ><br /></notempty></td>
			</tr>
			<tr>
				<th   width="10%">宝贝链接：</th>
				<td colspan="6">
					<input type="text" id="good_link" name="link" class="input-text" size="50" >
					<input type="button" value="一键采集" id="J_get_info" name="click_url_btn" class="btn">
					<p id="good_link_error" style="display:none;" class="onError">错误</p>
				</td>
			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">商品图片 :</th>
				<td><input type="text" name="pic_url" class="input-text"  id="J_pic_url" size="50"></td>
			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th  width="10%">商品名称 :</th>
				<td><input type="text" name="title" id="J_title" class="input-text" size="50" ></td>
			</tr>
			<tr>
				<th width="10%">商品标签 :</th>
				<td>
					<input type="text" name="tags" id="J_tags" class="input-text" size="50" >
					<input type="button" value="{:L('auto_get')}" id="J_gettags" name="tags_btn" class="btn">
				</td>
			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">开始时间 :</th>
				<td><input type="text" name="coupon_start_time" id="coupon_start_time" size="50" class="date"></td>
			</tr>
			<tr>
				<th>结束时间 :</th>
				<td><input type="text" name="coupon_end_time" id="coupon_end_time" size="50" class="date" ></td>
			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">所属分类 :</th>
				<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" /></td>
				<th width="10%">商品来源 :</th>
				<td>
					<select name="shop_type" id="shop_type">
					<volist name="orig_list" id="val">
					<option value="{$val.type}">{$val.name}</option>
					</volist>
            				</select>
				</td>
				<th>是否包邮 :</th>
				<td>
					<select name="ems" id="ems">
						<option value="0">不包邮</option>
						<option value="1">包邮</option>
					</select>				  
				</td>
			</tr>
		</table>
		
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">商品IID :</th>
				<td width="40%"><input type="text" name="num_iid" id="J_num_iid" class="input-text" size="25" ></td>
				<th width="10%">30天销量 :</th>
				<td width="40%"><input type="text" name="volume" id="volume" class="input-text" size="25" ></td> 
			</tr>
		</table>
		
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">掌柜旺旺 :</th>
				<td width="40%"><input type="text" name="nick" id="J_nick" class="input-text" size="25" value="{$info.nick}"></td>
				<th width="10%">点击量 :</th>
				<td width="40%"><input type="text" name="hits" id="hits" class="input-text" size="25" value="{$info.hits}"></td>
			</tr>
		</table>
		
		

		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th  width="10%">商品价格 :</th>
				<td width="40%"><input type="text" name="price" id="J_price"size="25" class="input-text" > 元</td>
				<th width="10%">券后价格 :</th>
				<td width="40%"><input type="text" name="coupon_price" id="coupon_price" size="25" class="input-text" > 元</td>
			</tr>
			<tr>

			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">商品简介 :</th>
				<td colspan="6"><textarea name="intro" id="J_intro" cols="100" rows="3"></textarea></td>
			</tr>
		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="10%">详细内容 :</th>
                <td><textarea name="desc" id="info" style="width:100%;height:400px;visibility:hidden;resize:none;"></textarea></td>
			</tr>
		</table>
		
		
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		    <tr>
				<th width="10%">是否有优惠券 :</th>
                <td width="15%">
				<select name="isq" id="isq">
            	<option value="0">否</option>
            	<option value="1">是</option>            	
            	</select>
				</td>

				<th>优惠券领取链接:</th>
				<td>
                	<input type="text" name="quanurl" id="quanurl" class="input-text" size="100" value="">
                </td>

		</table>
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
             <th width="10%">优惠券价格:</th>
			 <td width="15%">
                	<input type="text" name="quan" id="quan" class="input-text" size="10" value="">
                	元
             </td>
             <th>优惠券剩余数量:</th>
				<td>
                	<input type="text" name="Quan_surplus" id="Quan_surplus" class="input-text" size="28" value="">
                </td>
             <th>优惠券已领数量:</th>
				<td>
                	<input type="text" name="Quan_receive" id="Quan_receive" class="input-text" size="28" value="">
            </td>
		</table>
		
		
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr style="display:none">
				<th>推广链接 :</th>
				<td>
                	<input type="text" name="click_url" id="J_click_url" class="input-text" size="100" value="{$info.click_url}">
					<input type="button" value="{:L('auto_get')}" id="J_getclick_url" name="click_url_btn" class="btn">
                </td>
			</tr>
		</table>
		</div>

		<div class="content_list pad_10 hidden">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">{:L('seo_title')} :</th>
 				<td><input type="text" name="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
			</tr>
			<tr>
				<th>{:L('seo_keys')} :</th>
				<td><input type="text" name="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
			</tr>
			<tr>
				<th>{:L('seo_desc')} :</th>
				<td><textarea name="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
			</tr>
		</table>
		</div>
        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px;"></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
</form>

<include file="public:footer" />
	
<script src="__STATIC__/js/kindeditor/kindeditor.js"></script>
<script type="text/javascript">
$(function() {
	window.editor = KindEditor.create('#info', {
		uploadJson : '{:U("attachment/editer_upload")}',
		fileManagerJson : '{:U("attachment/editer_manager")}',
		allowFileManager : true
	});
});
	
$('.J_cate_select').cate_select('请选择');
$(function() { 		   
	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.yhxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.yhxia.tip({content:result.msg});
			}
		});
	});

	$('#J_getclick_url').live('click', function() {
		var iid = $.trim($('#J_num_iid').val());
		if(iid == ''){
			$.yhxia.tip({content:lang.iid_empty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_getclick_url")}', {iid:iid}, function(result){
			if(result.status == 1){
				$('#J_click_url').val(result.data);
			}else{
				$.yhxia.tip({content:result.msg});
			}
		});
	});
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#good_link").formValidator({onshow:'请填写宝贝链接',onfocus:'请填写宝贝链接'}).inputValidator({min:1,onerror:'请填写宝贝链接'});
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'});
	$("#J_num_iid").formValidator({onshow:"请填写iid",onfocus:"请填写iid",oncorrect:"填写正确",onempty:"请填写iid"}).inputValidator({min:9,max:20,onerror:"iid应该为9-13位之间的数字"}).regexValidator({regexp:"^[1-9][0-9]*$",onerror:"请填写整数"});
	$("#J_price").formValidator({onshow:"请填写原价",onfocus:"请填写价格",oncorrect:"填写正确",onempty:"请填写价格"}).inputValidator({min:1,max:100,onerror:"请正确填写价格"});
	$("#J_pic_url").formValidator({onshow:"请填写宝贝地址",onfocus:"请填写宝贝地址",oncorrect:"填写正确",onempty:"请填写宝贝地址"}).inputValidator({min:50,onerror:"请正确填写宝贝地址"});

	$("#coupon_price").formValidator({onshow:"请填写秒杀价",onfocus:"请填写秒杀价",oncorrect:"填写正确",onempty:"请填写秒杀价"}).inputValidator({min:1,max:100,onerror:"请填写秒杀价"});
	$("#coupon_start_time").formValidator({onshow:"请选择秒杀开始时间",onfocus:"请选择秒杀开始时间",oncorrect:"填写正确",onempty:"请填写秒杀开始时间"}).inputValidator({min:15,max:30,onerror:"请正确选择秒杀开始时间"});
	$("#coupon_end_time").formValidator({onshow:"请选择秒杀结束时间",onfocus:"请选择秒杀开结束时间",oncorrect:"填写正确",onempty:"请填写秒杀开结束时间"}).inputValidator({min:15,max:30,onerror:"请正确选择秒杀开结束时间"});
	$("#J_nick").formValidator({onshow:"请填写掌柜",onfocus:"请填写掌柜",oncorrect:"填写正确",onempty:"请填写标题"}).inputValidator({min:3,max:100,onerror:"请正确填写掌柜"});


	var collect_url = "{:U('items/ajaxgetid')}";
	$("#good_link").focusout(function() {
		var link = $("#good_link").val();
		if (link != '') {
			$.getJSON(collect_url, {url:link}, function(result){
				if(result.status == 1){
					$('#J_num_iid').val(result.data.num_iid);
					$('#J_click_url').val(result.data.click_url);
					$('#J_title').val(result.data.title);
					$('#J_intro').val(result.data.title);
					$('#J_price').val(result.data.price);
					$('#ems').val(result.data.ems);
					$('#J_nick').val(result.data.nick);
					$('#J_pic_url').val(result.data.pic_url);
					$('#J_pic_url_img').attr('src',result.data.pic_url);
					$('#volume').val(result.data.volume);
					$('#coupon_price').val(result.data.coupon_price);
					$('#coupon_start_time').val(result.data.coupon_start_time);
					$('#coupon_end_time').val(result.data.coupon_end_time);
					$('#shop_type').val(result.data.shop_type);
					editor.html(result.data.desc);
					$('#good_link_error').hide();
					$.getJSON('{:U("items/ajax_gettags")}', {title:result.data.title}, function(result){
						if(result.status == 1){
							$('#J_tags').val(result.data);
						}else{
							$.yhxia.tip({content:result.msg});
						}
					});


				}else if(result.status == 0){
					$('#good_link_error').show().html(result.msg);
				}
			});
		}
	});

	$('#J_get_info').live('click', function() {
		var link = $("#good_link").val();
		if (link != '') {
			$.getJSON(collect_url, {url:link}, function(result){
				if(result.status == 1){
					$('#J_num_iid').val(result.data.num_iid);
					$('#J_click_url').val(result.data.click_url);
					$('#J_title').val(result.data.title);
					$('#J_intro').val(result.data.title);
					$('#J_price').val(result.data.price);
					$('#J_nick').val(result.data.nick);
					$('#J_pic_url').val(result.data.pic_url);
					$('#J_pic_url_img').attr('src',result.data.pic_url);
					$('#volume').val(result.data.volume);
					$('#coupon_price').val(result.data.coupon_price);
					$('#coupon_start_time').val(result.data.coupon_start_time);
					$('#coupon_end_time').val(result.data.coupon_end_time);
					$('#shop_type').val(result.data.shop_type);
					$('#ems').val(result.data.ems);
					editor.html(result.data.desc);
					$('#good_link_error').hide();
				
				}else if(result.status == 0){
					$('#good_link_error').show().html(result.msg);
				}
			});
		}
	});


});

</script>
 <script language="javascript" type="text/javascript">
    Calendar.setup({
        inputField     :    "coupon_start_time",
        ifFormat       :    "%Y-%m-%d %H:%M",
        showsTime      :    'true',
        timeFormat     :    "24"
    });
</script>
<script language="javascript" type="text/javascript">
    Calendar.setup({
        inputField     :    "coupon_end_time",
        ifFormat       :    "%Y-%m-%d %H:%M",
        showsTime      :    'true',
        timeFormat     :    "24"
    });
</script>
</body>
</html> 