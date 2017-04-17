<include file="public:header" />
<!--广告列表-->
<div class="pad_lr_10">
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
            <td>
            <div class="explain_col">
            	<input type="hidden" name="g" value="admin" />
                <input type="hidden" name="m" value="ad" />
                <input type="hidden" name="a" value="index" />
                <input type="hidden" name="menuid" value="{$menuid}" />
            	{:L('ad_start_time')}：
            	<input type="text" name="start_time_min" id="start_time_min" class="date" size="12" value="{$search.start_time_min}">
                -
                <input type="text" name="start_time_max" id="start_time_max" class="date mr10" size="12" value="{$search.start_time_max}">
                {:L('ad_end_time')}：
                <input type="text" name="end_time_min" id="end_time_min" class="date" size="12" value="{$search.end_time_min}">
                -
                <input type="text" name="end_time_max" id="end_time_max" class="date" size="12" value="{$search.end_time_max}">
            	<div class="bk3"></div>
                {:L('adboard')}：
                <select name="board_id" class="mr10">
                    <option value="">--{:L('all')}--</option>
                    <volist name="board_list" id="val" >
                    <option value="{$key}" <if condition="$search.board_id eq $key">selected="selected"</if>>{$val}</option>
                    </volist>
                </select>
                {:L('ad_type')}：
                <select name="style" class="mr10">
                    <option value="">--不限--</option>
                    <volist name="ad_type_arr" id="val" >
                    <option value="{$key}" <if condition="$search.style eq $key">selected="selected"</if>>{$val}</option>
                    </volist>
                </select>
                {:L('keyword')}：
                <input name="keyword" type="text" class="input-text mr10" size="25" value="{$search.keyword}" />
                <input type="submit" name="search" class="btn" value="搜索" />
        	</div>
            </td>
            </tr>
        </tbody>
    </table>
    </form>
    
    <div class="J_tablelist table_list" data-acturi="{:U('ad/ajax_edit')}">
		<table width="100%" cellspacing="0">
        <thead>
          <tr>
            <th width="25"><input type="checkbox" name="checkall" class="J_checkall"></th>
            <th>ID</th>
            <th align="left"><span data-tdtype="order_by" data-field="name">{:L('ad_name')}</span></th>
            <th align="left"><span data-tdtype="order_by" data-field="url">{:L('ad_url')}</span></th>
            <th><span data-tdtype="order_by" data-field="type">{:L('ad_type')}</span></th>
            <th><span data-tdtype="order_by" data-field="board_id">{:L('adboard')}</span></th>
            <th width="150">有效时间</th>
            <th width="60"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
            <th width="60"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
            <th width="80">{:L('operations_manage')}</th>
          </tr>
        </thead>
        <tbody>
          <volist name="list" id="val" >
          <tr>
            <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
            <td align="center">{$val.id}</td>
            <td><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit">{$val.name}</span></td>
            <td><span data-tdtype="edit" data-field="url" data-id="{$val.id}" class="tdedit">{$val.url}</span></td>
            <td align="center">{$ad_type_arr[$val['type']]}<if condition="$val.type eq 'image'"><notempty name="val['content']"><span class="attachment_icon J_attachment_icon" file-type="image" file-rel="{$img_dir}{$val.content}"><img src="__STATIC__/images/filetype/image_s.gif" /></span></notempty></if></td>
            <td align="center"><em class="red">(id:{$val.board_id})</em>{$val.adbord.name}</td>
            <td align="center">{$val.start_time|date='Y-m-d',###} / {$val.end_time|date='Y-m-d',###}</td>
            <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
            <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="status" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" /></td>
            <td align="center">
            	<a href="javascript:void(0);" class="J_showdialog" data-uri="{:U('ad/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.name}" data-id="edit" data-width="520" data-height="350">{:L('edit')}</a> | 
                <a href="javascript:void(0);" class="J_confirmurl" data-acttype="ajax" data-uri="{:u('ad/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['name'])}">{:L('delete')}</a></td>
          </tr>
          </volist>
        </tbody>
      	</table>
		<div class="btn_wrap_fixed">
    		<label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
            <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('ad/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    		<div id="pages">{$page}</div>
    	</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script type="text/javascript">
Calendar.setup({
	inputField : "start_time_min",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "start_time_max",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "end_time_min",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "end_time_max",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
</script>
</body>
</html>