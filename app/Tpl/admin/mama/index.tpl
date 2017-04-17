<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
			<input type="hidden" name="g" value="admin" />
			<input type="hidden" name="m" value="mama" />
			<input type="hidden" name="a" value="index" />
			<input type="hidden" name="menuid" value="{$menuid}" />
			<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
			发布时间 :
			<input type="text" name="time_start" id="J_time_start" class="date" size="16" value="{$time_start}">
			-
			<input type="text" name="time_end" id="J_time_end" class="date" size="16" value="{$time_end}">
			&nbsp;&nbsp;分类 :
			<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$search.selected_ids}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="{$search.cate_id}" />
			<div class="bk8"></div>
			卖家信用 :
			<select class="mr10" name="start_credit">
				<option value="">--默认--</option>
				<volist name="start_credit_arr" id="item">
				<option value="{$item.id}" <if condition="$start_credit eq $item['id']">selected="selected"</if> >{$item.name}</option>
				</volist>
			</select>
			-
			<select class="mr10" name="end_credit">
				<option value="">--默认--</option>
				<volist name="end_credit_arr" id="item">
				<option value="{$item.id}" <if condition="$end_credit eq $item['id']">selected="selected"</if> >{$item.name}</option>
				</volist>
			</select>
			价格排序 :
			<select class="mr10" name="sort">
				<volist name="sort_arr" id="item">
				<option value="{$item.id}" <if condition="$sort eq $item['id']">selected="selected"</if> >{$item.name}</option>
				</volist>
			</select>
			
			<label>是否天猫 :
			<input type="checkbox" name="tmall" <if condition="$tmall eq true">checked="checked"</if> value="true" ></label>
			&nbsp;&nbsp;
			妈妈分类 :
			<select class="J_mama_select mr10" data-pid="0" data-uri="{:U('mama/ajax_mama_cate')}" data-selected="{$search.cid}"></select>
			<input type="hidden" name="cid" id="J_mama_id" value="{$search.cid}" />

			
			<div class="bk8"></div>
			价格区间 :
			<input type="text" name="price_min" class="input-text" size="5" value="{$search.price_min}" />
			-
			<input type="text" name="price_max" class="input-text" size="5" value="{$search.price_max}" />
			&nbsp;&nbsp;佣金比率 :
			<input type="text" name="rates_min" class="input-text" size="5" value="{$search.rates_min}" />
			- 
			<input type="text" name="rates_max" class="input-text" size="5" value="{$search.rates_max}" />
			&nbsp;&nbsp;地区 :
			<input type="text" name="area" class="input-text" size="12" value="{$search.area}" />

			&nbsp;&nbsp;关键字 :
			<input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
			<input type="submit"  class="btn" value="搜索" />		
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
 

    <div class="J_tablelist table_list" data-acturi="{:U('mama/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="20"><span data-tdtype="order_by" data-field="id">ID</span></th>
				<th width="50" align="center">缩略图</th>
                <th align="left"><span data-tdtype="order_by" data-field="title">商品名称</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
                <th width="100">掌柜</th>
                <th width="70"><span data-tdtype="order_by" data-field="price">原价(元)</span></th>
                <th width="70"><span data-tdtype="order_by" data-field="coupon_price">活动价(元)</span></th>
				<th width="70"><span data-tdtype="order_by" data-field="coupon_rate">折扣比率</span></th>
				<th width="90"><span data-tdtype="order_by" data-field="volume">已购买人数</span></th>
				<th width="120"><span data-tdtype="order_by" data-field="coupon_start_time">活动时间</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="mama_list" id="val" key="key">
            <tr class="tr_{$key}">
                <td align="center"><input type="checkbox" name="items" class="J_checkitem" value="{$key}"></td>
                <td align="center">{$key}</td>
                <td align="right">
                    <div class="img_border">
	                    <a href="{$val.item_url}" target="_blank"><img src="{:attach(get_thumb('http://gd1.alicdn.com/bao/uploaded/'.$val['pic_url'], '_s'), 'item')}" width="32" width="32" class="J_preview" data-bimg="{:attach(get_thumb('http://gd1.alicdn.com/bao/uploaded/'.$val['pic_url'],'_m'), 'item')}"></a>
	                </div>
                </td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$key}" class="tdedit title_{$key}" style="color:{$val.colors};">{$val.title}</span></td>
                <td align="center">
	               
	                <b>{$cate_list[$search['cate_id']]}</b>
	            </td>
                <td align="center"><a href="{$val.shop_url}" target="_blank">{$val.nick}</a></td>
                <td align="center" class="red">{$val.price}</td> 
                <td align="center" class="red">{$val.final_price}</td> 
				<td align="center" class="red">{$val.coupon_rate}</td> 
				<td align="center">{$add_time|date="Y-m-d H:m",###}</td>
                <td align="center">
	                <a href="javascript:void(0);" class="M_confirmurl" data-acttype="add" data-id="{$key}" >{:L('add')}</a> |
	                <a href="javascript:void(0);" class="M_confirmurl" data-acttype="del" data-id="{$key}" data-msg="是否删除此条记录？">{:L('delete')}</a>
	            </td>
            </tr>
            <input type="hidden"  class="num_iid_{$key}" name="num_iid" value="{$val.item_id}">
	        <input type="hidden" class="cate_id_{$key}" name="cate_id" value="{$search.cate_id}">
	        <input type="hidden" class="price_{$key}" name="price" value="{$val.price}">
	        <input type="hidden" class="coupon_price_{$key}" name="coupon_price" value="{$val.final_price}">
	        <input type="hidden" class="coupon_rate_{$key}" name="coupon_rate" value="{$val.coupon_rate}">
            
            </volist>
    	</tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn M_confirmurl" data-acttype="delAll" data-msg="是否删除全部?" value="{:L('delete')}" />
        &nbsp;
        <input type="button" class="btn M_confirmurl" data-acttype="addAll" data-msg="是否添加全部?" value="添加全部" />

        
        <div id="pages">
	        <script>
		        var page_no = {$search.page_no};
		        PAGE = PAGE.replace("&page_no="+page_no,"");
		        document.write("<a  style='margin-right:0px' class='btn' href='"+ PAGE +"&page_no="+ (page_no - 1) +"'>上一页</a>");
		        document.write("<span>"+ page_no +"</span>");
		        document.write("<a class='btn' href='"+ PAGE +"&page_no="+ (page_no + 1) +"'>下一页</a>");
	        </script>
        </div>
    </div>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/Mama.js"></script>
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
Calendar.setup({
	inputField : "J_time_start",
	ifFormat   : "%Y-%m-%d %H:%M",
	showsTime  : true,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "J_time_end",
	ifFormat   : "%Y-%m-%d %H:%M",
	showsTime  : true,
	timeFormat : "24"
});
$('.J_preview').preview(); //查看大图
$('.J_cate_select').cate_select({field:"J_cate_id",top_option:lang.all}); //分类联动
$('.J_mama_select').mama_select({field:"J_mama_id",top_option:lang.all}); //分类联动
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});



function add(id){
	var title = $(".title_"+id).html(),
		num_iid = $(".num_iid_"+id).val(),
		cate_id = $(".cate_id_"+id).val(),
		price = $(".price_"+id).val(),
		time_start = $("#J_time_start").val(),
		time_end = $("#J_time_end").val(),
		coupon_price = $(".coupon_price_"+id).val(),
		coupon_rate = $(".coupon_rate_"+id).val();

		$.post("{:U('admin/mama/ajaxadd')}", { num_iid: num_iid, title: title ,cate_id: cate_id ,price: price ,coupon_price:coupon_price ,coupon_rate:coupon_rate ,time_start:time_start,time_end:time_end},
		   function(data){
		     if(data.status == 1){
			    $.yhxia.tip({content: title + "-添加成功."});
			     $(".tr_"+id).remove();
		     }else if(data.status == 0){
			     $.yhxia.tip({content: data.data});
		     }
		   }
		   
		 );
}
//确认操作
$('.M_confirmurl').live('click', function(){
	var self = $(this),
	id = self.attr('data-id'),
	acttype = self.attr('data-acttype'),
	title = (self.attr('data-title') != undefined) ? self.attr('data-title') : lang.confirm_title,
	msg = self.attr('data-msg');
	//添加
	if(acttype == 'add'){
		add(id);
	}
	//删除
	if(acttype == 'del'){
		$.dialog({
			title:title,
			content:msg,
			padding:'10px 20px',
			lock:true,
			ok:function(){
				$(".tr_"+id).remove();
				$.yhxia.tip({content: "删除成功."});
			},
			cancel:function(){}
		});
	}
	//删除所有
	if(acttype == 'delAll'){
		$.dialog({
			title:title,
			content:msg,
			padding:'10px 20px',
			lock:true,
			ok:function(){
				$("input[name=items]").each(function() {  
		            if ($(this).attr("checked")) {  
		                var item = $(this).val(); 
		                $(".tr_"+item).remove();
		                $.yhxia.tip({content: "ID"+ item +"删除成功."});
		            }  
		        });  
			},
			cancel:function(){}
		});
	}
	//添加所有
	if(acttype == 'addAll'){
		$.dialog({
			title:title,
			content:msg,
			padding:'10px 20px',
			lock:true,
			ok:function(){
				$("input[name=items]").each(function() {  
		            if ($(this).attr("checked")) {  
		                add($(this).val()); 
		            }  
		        });  
			},
			cancel:function(){}
		});
	}
});
</script>
<style>
	.H{
		color: red;
	}
</style>
</body>
</html>