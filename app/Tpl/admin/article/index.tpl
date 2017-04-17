<include file="public:header" />
<!--文章列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
        <tr>
            <td>
            <div class="explain_col">
                <input type="hidden" name="g" value="admin" />
                <input type="hidden" name="m" value="article" />
                <input type="hidden" name="a" value="index" />
                <input type="hidden" name="menuid" value="{$menuid}" />
                {:L('publish_time')}：
                <input type="text" name="time_start" id="time_start" class="date" size="12" value="{$search.time_start}">
                -
                <input type="text" name="time_end" id="time_end" class="date" size="12" value="{$search.time_end}">
                &nbsp;&nbsp;{:L('article_cateid')}：
                <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('article_cate/ajax_getchilds')}" data-selected="{$search.selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$search.cate_id}" />
                &nbsp;&nbsp;{:L('status')}:
                <select name="status">
                <option value="">-{:L('all')}-</option>
                <option value="1" <if condition="$search.status eq '1'">selected="selected"</if>>已审核</option>
                <option value="0" <if condition="$search.status eq '0'">selected="selected"</if>>未审核</option>
                </select>
                &nbsp;&nbsp;{:L('keyword')} :
                <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                <input type="submit" name="search" class="btn" value="{:L('search')}" />
            </div>
            </td>
        </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list" data-acturi="{:U('article/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th align="left"><span data-tdtype="order_by" data-field="title">{:L('article_title')}</span></th>
                <th><span data-tdtype="order_by" data-field="cate_id">{:L('article_cateid')}</span></th>
                <th width=150>{:L('author')}</th>
				<th width=50><span data-tdtype="order_by" data-field="hits">点击量</span></th>
				<th width=150><span data-tdtype="order_by" data-field="add_time">{:L('publish_time')}</span></th>
                <th width=60><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.title}</span><notempty name="val['img']"><span class="attachment_icon J_attachment_icon" file-type="image" file-rel="{$img_dir}{$val.img}"><img src="__STATIC__/images/filetype/image_s.gif" /></span></notempty></td>
                <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
				<td align="center"><b>{$val['author']}</b></td>
				<td align="center"><b>{$val['hits']}</b></td>
                <td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="status" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center"><a href="{:u('article/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-acttype="ajax" data-uri="{:u('article/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
        </tbody>
    </table>

    <div class="btn_wrap_fixed">
        <label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('article/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>

    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
$('.J_cate_select').cate_select({top_option:lang.all});
Calendar.setup({
    inputField : "time_start",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
Calendar.setup({
    inputField : "time_end",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
</script>
</body>
</html>
