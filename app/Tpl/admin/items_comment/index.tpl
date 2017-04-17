<include file="public:header" />
<div class="pad_lr_10" style="margin-top:10px;">
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
            <td>
            <div class="explain_col">
            	<input type="hidden" name="g" value="admin" />
                <input type="hidden" name="m" value="items_comment" />
                <input type="hidden" name="a" value="index" />
                <input type="hidden" name="menuid" value="{$menuid}" />
                关键字 :
                <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                <input type="submit" name="search" class="btn" value="搜索" />
        	</div>
            </td>
            </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list" data-acturi="{:U('items_comment/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="25"><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="50">序号</th>
                <th align="left"><span data-tdtype="order_by" data-field="info">评论内容</span></th>
                <th align="left" width="300">商品名称</th>
                <th align="center" width="80"><span>用户名</span></th>
                <th align="center" width="120"><span data-tdtype="order_by" data-field="add_time">发表时间</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">
                <input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$p*20-20+$i}</td>
                <td align="left"><a title="{$val.info}">{$val.info}</a></td>
                <td align="left"><p style="width:280px;height:18px;line-height:18px;overflow:hidden;">{$val.item_name}</p></td>
                <td align="center">{$val.uname}</td>
                <td align="center">{$val.add_time|date="Y-m-d H:i:s",###}</td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="status" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center">
                	<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:U('items_comment/delete', array('id'=>$val['id'], 'item_id'=>$val['item_id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),'该评论')}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>

    <div class="btn_wrap_fixed">
        <label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('items_comment/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>

    </div>
</div>
<include file="public:footer" />
<script>
$('.J_preview').preview(); //查看大图
</script>
</body>
</html>
