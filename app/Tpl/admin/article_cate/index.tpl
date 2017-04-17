<include file="public:header" />
<!--栏目列表-->
<div class="pad_lr_10">
    <div class="J_tablelist table_list" data-acturi="{:U('article_cate/ajax_edit')}">
    <table width="100%" cellspacing="0" id="J_cate_tree">
        <thead>
            <tr>
                <th width="30"><input type="checkbox" name="checkall" class="J_checkall"></th>
              	<th align="left">{:L('article_cate_name')}</th>
                <th width="60"><span data-tdtype="order_by" data-field="id">ID</span></th>
              	<th width="80"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
                <th width="150">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
        {$list}
    	</tbody>
    </table>
    </div>
    <div class="btn_wrap_fixed">
        <label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('article_cate/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    </div>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/jquery/plugins/jquery.treetable.js"></script>
<script>
$(function(){
    //initialState:'expanded'
    $("#J_cate_tree").treeTable({indent:20,treeColumn:1});
    $(".J_preview").preview();
});
</script>
</body>
</html>