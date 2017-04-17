<include file="public:header" />
<!--商品列表-->
<div class="pad_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="score_order" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;&nbsp;订单号 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                    &nbsp;&nbsp;用户名 :
                    <input type="text" name="uname" class="input-text" size="12" value="{$search.uname}" />
                    下单时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
                    
                    &nbsp;&nbsp;状态 :
                    <select name="status">
                    <option value="">-{:L('all')}-</option>
                    <option value="0" <if condition="$search.status eq '0'">selected="selected"</if>>请求代付</option>
                    <option value="1" <if condition="$search.status eq '1'">selected="selected"</if>>代付完成</option>
                    </select>
                    <input type="submit" name="search" class="btn" value="搜索" />
                    <div class="bk8"></div>                
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
    <div class="J_tablelist table_list" data-acturi="{:U('score_order/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="uname">会员名</span></th>
                <th><span data-tdtype="order_by" data-field="item_name">商品名称</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="item_num">数量</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="order_score">积分</span></th>
		<th width="60"><span data-tdtype="order_by" data-field="realname">姓名</span></th>
		<th width="250">地址</th>
		<th width="60">物流公司</th>
		<th width="60">运单号码</th>
                <th width="120"><span data-tdtype="order_by" data-field="add_time">下单时间</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
                <th width="90">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="center">{$val.uname}</td>
                <td align="center">{$val.item_name}</td>
                <td align="center">{$val.item_num}</td>
                <td align="center">{$val.order_score}</td>  
		<td align="center">{$val.realname}</td> 
		<td align="center">{$val.address}</td> 
		<td align="center">{$val.ems_name}</td> 
		<td align="center">{$val.ems_id}</td> 
                <td align="center">{$val.add_time|frienddate}</td>              
                <td align="center"><if condition="$val['status'] eq '2'">订单异常<elseif condition="$val['status'] eq '1'" /><span class="green">订单已发货</span><else/>订单审核中</if></td>
                <td align="center">
				
				
				<if condition="$val['status'] eq '2'"><a href="{:u('score_order/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">订单异常</a><elseif condition="$val['status'] eq '0'" /><a href="{:u('score_order/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">审核</a><else/><span class="green"><a href="{:u('score_order/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">已发货</a></span></if> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('score_order/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
        </tbody>
    </table>
    </div>
    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('score_order/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
Calendar.setup({
    inputField : "J_time_start",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
Calendar.setup({
    inputField : "J_time_end",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
</script>
</body>
</html>