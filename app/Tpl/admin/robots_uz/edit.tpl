<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">U站采集器修改</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('robots_uz/edit')}" name="searchform" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">{:L('tbk_name')}：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" value="{$info.name}"/>
                    <span class="gray ml10">{:L('tbk_name_desc')}</span>
                </td>
            </tr>
 <tr>
				<th width="120">采集的U站：</th>
                <td>
                <span id="s_uzhan_info"></span>
					<input type="hidden" name="uzhan_id" id="uzhan_id" value="{$info.other_id}" />
				</td>
			</tr>
			<tr>
				<th width="120">U站分类：
				
				</th>
                <td id="td_uzhan_cate">
					
				</td>
			</tr>



 

			<tr>
                <th>采集页数：</th>
                <td>

					<select name="page" id="page">
					<?php for($a=1;$a<=5;$a++){?>
						<option value="<?=$a?>" <if condition="$info.page eq $a"> selected</if> >采集<?=$a?>页</option>
					<?php 
					}
					?>
                    </select>
                </td>
            </tr>

 
			<tr>
				<th>是否包邮：</th>
				<td>
					<input name="ems" id="ems0" value="0"  type="radio" <if condition="$info.ems eq '0'"> checked</if>><label for="ems0">&nbsp;默&nbsp;认&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input name="ems" id="ems1" value="1" type="radio"  <if condition="$info.ems eq '1'"> checked</if>><label for="ems1">&nbsp;包&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<span class="gray ml10"></span>
				</td>
			</tr>


            <tr>
                <th>是否商城：</th>
                <td>
                    <label class="mr10"><input type="checkbox" name="shop_type" value="B" <if condition="$info.shop_type eq 'B'"> checked</if>> {:L('only_tmall')}</label>
                </td>
            </tr>

            <tr>
                <th></th>
                <td>
					<input type="hidden" name="id"  value="{$info.id}" />
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</div>
<include file="public:footer" />
<script>
var uzhanId = '{$info.uzhan_id}';
var uzhanCateId = '{$info.uzhanCate}';
var uzhanCateSelected = {$info.uzhanCate};
var uzhanCates= [];
var uzhanCateUrl = "{:U('robots_uz/getUzCateList')}";
var uri = "{:U('robots_uz/getuzlist')}";

$('.J_cate_select').cate_select('请选择');
$(function(){
   

	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});


	var theCateBody = $('#td_uzhan_cate');
		theCateBody.html('');
		$('#uzhan_id').val(uzhanId);
		if (uzhanId > 0) {
			$.getJSON(uzhanCateUrl, {
				uzhan_id: uzhanId
			}, function(result) {
				$('.uzhan_select').attr("disabled", "disabled");
				if (result.status == '1') {
					uzhanCates = result.data;
					var bodyStr = '';
					for (var i = 0; i < result.data.length; i++) {
						if (result.data[i].id == uzhanCateId) {
							bodyStr += '<input type="radio" class="" name="uzhanCate" id="cb_' + result.data[i].id + '" value="' + result.data[i].id + '"   checked="true"/> ' + result.data[i].name + ' ';
							
						} else {
							bodyStr += '<input type="radio" class="" name="uzhanCate" id="cb_' + result.data[i].id + '" value="' + result.data[i].id + '"/> ' + result.data[i].name + ' ';
						}
					};
					theCateBody.html(bodyStr);
				}
			});
			$.getJSON(uri, {}, function(result) {
				if (result.status == '1') {
					for (var i = 0; i < result.data.length; i++) {
						if (uzhanId != '' && uzhanId == result.data[i].id) {
							$("#s_uzhan_info").html(result.data[i].name);
							break
						}
					}
				}
			});
		}
	


	


});
</script>
</body>
</html>
