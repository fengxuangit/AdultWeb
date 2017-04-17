<include file="public:header" />
<!--IP列表-->
<div class="pad_lr_10" >

	<form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
            <td>
            <div class="explain_col">
            	<input type="hidden" name="g" value="admin" />
                <input type="hidden" name="m" value="ipban" />
                <input type="hidden" name="a" value="index" />
                <input type="hidden" name="menuid" value="{$menuid}" />
                IP :
                <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                <input type="submit" name="search" class="btn" value="搜索" />
        	</div>
            </td>
            </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list" data-acturi="{:U('ipban/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="40"><input type="checkbox" name="checkall" class="J_checkall"></th>
				<th><span tdtype="order_by" fieldname="id">ID</span></th>
                <th align="left"><span data-tdtype="order_by" data-field="name">IP</span></th>
				<th align="left"><span data-tdtype="order_by" data-field="expires_time">有效期</span></th>
                <th width="120">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val">
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
				<td align="center">{$val.id}</td>
                <td align="left"><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit">{$val.name}</span></td>
				<td align="left">{$val.expires_time|date='Y-m-d H:i:s',###}</td>
                <td align="center">
                	<a href="javascript:;" class="J_showdialog" data-uri="{:U('ipban/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.name}"  data-id="edit" data-acttype="ajax" data-width="400" data-height="130">{:L('edit')}</a> | 
                    <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="{:U('ipban/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['name'])}">{:L('delete')}</a>
                </td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">
    	<label><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
    	<input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('ipban/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    	<div id="pages">{$page}</div>
    </div>

</div>
<include file="public:footer" />
</body>
</html>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>