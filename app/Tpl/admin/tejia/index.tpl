<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">淘宝天天特价采集器 - 【注意：有的分类没有特价商品，淘宝天天特价地址：<a href="http://te.tejia.taobao.com" target="_blank">http://te.tejia.taobao.com</a>】</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('tejia/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择要采集的天天特价分类 :</th>
            <td><select class="J_tejia_select mr10" data-pid="0" data-uri="{:U('tejia_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">选择采集后入库的对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
	<input type="hidden" name="tejia_cate_id" id="J_tejia_cate_id" value="0" />
    </form>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('tejia/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'tejia', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.yhxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('tejia').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('tejia').close();
                $.yhxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
	$('.J_tejia_select').tejia_select({field:'J_tejia_cate_id'});
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>