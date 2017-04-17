<include file="public:header" />
<!--商品来源-->
<div class="pad_lr_10" >
    <div class="J_tablelist table_list" data-acturi="{:U('items_orig/ajax_edit')}">
	<table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="25"><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="40"><span tdtype="order_by" fieldname="id">ID</span></th>
				<th align="center" width="60">{:L('item_orig_img')}</th>
                <th align="left"><span data-tdtype="order_by" data-field="name">{:L('item_orig_name')}</span></th>
                <th align="left"><span data-tdtype="order_by" data-field="url">{:L('item_orig_domain')}</span></th>
				<th align="left"><span data-tdtype="order_by" data-field="type">{:L('item_orig_type')}</span></th>
				<th align="left" width="50"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">
                <input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="center"><notempty name="val['img']"><img src="{:attach($val['img'], 'item_orig')}"></notempty></td>
                <td align="left"><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.name}</span></td>
                <td align="left"><span data-tdtype="edit" data-field="url" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.url}</span></td>
				<td align="left"><span data-tdtype="edit" data-field="type" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.type}</span></td>
				<td align="left"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.ordid}</span></td>
                <td align="center">
					<a href="javascript:;" class="J_showdialog" data-uri="{:U('items_orig/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.name}"  data-id="edit" data-acttype="ajax" data-width="500" data-height="180">{:L('edit')}</a> | 
                    <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="{:U('items_orig/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['name'])}">{:L('delete')}</a>
					</td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">
    	<label><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
    	<input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('items_orig/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    	<div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
</body>
</html>
