<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">添加U站采集器</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('robots_uz/add')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">{:L('tbk_name')}：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" />
                    <span class="gray ml10">{:L('tbk_name_desc')}</span>
                </td>
            </tr>

	    <tr>
				<th width="120">采集的U站：</th>
                <td>
					<select class="uzhan_select mr10" data-pid="0" data-uri="{:U('robots_uz/getuzlist')}" data-selected=""></select><input type="hidden" name="uzhan_id" id="uzhan_id" value="" />
				</td>
			</tr>
			<tr>
				<th width="120">U站分类：
				
				</th>
                <td id="td_uzhan_cate">
					
				</td>
			</tr>


			<tr>
				<th width="120">所属分类：</th>
                <td>
					<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" />
				</td>
			</tr>

			<tr>
                <th>采集页数：</th>
                <td>

					<select name="page" id="page">
						<?php for($a=1;$a<=5;$a++){?>
						<option value="<?=$a?>" <if condition="2 eq $a"> selected</if> >采集<?=$a?>页</option>
						<?php 
						}
						?>
                    </select>
                </td>
            </tr>
			<tr>
				<th>是否包邮：</th>
				<td>
					<input name="ems" id="ems0" value="0"  type="radio" checked><label for="ems0">&nbsp;默&nbsp;认&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input name="ems" id="ems1" value="1" type="radio"><label for="ems1">&nbsp;包&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<span class="gray ml10"></span>
				</td>
			</tr>
 
 
            <tr>
                <th>是否商城：</th>
                <td>
                    <label class="mr10"><input type="checkbox" name="shop_type" value="B"> {:L('only_tmall')}</label>
                </td>
            </tr>

            <tr>
                <th></th>
                <td>
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</div>
<include file="public:footer" />
<script>
var uzhanId = '';
var uzhanCateId = '';
var uzhanCateSelected = [];
var uzhanCates= [];
var uzhanCateUrl = "{:U('robots_uz/getUzCateList')}";

var totalcoll = 0;
$('.uzhan_select').uzhan_select('请选择');
$('.J_cate_select').cate_select('请选择');
$(function(){
    var uri = "{:U('uz/getuzlist')}";
    $('.J_tbcats').die('change').live('change', function(){
        var _this = $(this),
            _cid = _this.val();
        _this.nextAll('.J_tbcats').remove();
        $.getJSON(uri, {cid:_cid}, function(result){
            if(result.status == '1'){
                var _childs = $('<select class="J_tbcats mr10"><option value="0">--'+lang.all+'--</option></select>')
                for(var i=0; i<result.data.length; i++){
                    $('<option value="'+result.data[i].cid+'">'+result.data[i].name+'</option>').appendTo(_childs);
                }
                _childs.insertAfter(_this);
            }
        });
        $('#J_cid').val(_cid);
    });

	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});


});
</script>
</body>
</html>
