<div class="dialog_content col_tab">
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<form id="info_form" action="{:u('setting/edit')}" method="post">
	<div class="J_panes">
		<div class="content_list pad_10">
		<table width="100%" class="table_form">
			<tr>
			    <th width="100">统一时间开关 :</th>
			    <td>
				<label><input type="radio" <if condition="C('yh_coupon_time_open') eq '1'">checked="checked"</if> value="1" name="setting[coupon_time_open]"> {:L('open')}</label> &nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_coupon_time_open') eq '0'">checked="checked"</if> value="0" name="setting[coupon_time_open]"> {:L('close')}</label>
				<span class="gray ml10"></span>
			    </td>
			</tr>
			<tr>
			    <th width="100">统一开始时间 :</th>
			    <td><input type="text" name="setting[coupon_start_time]" size="20" id="coupon_start_time"  class="date" value="{:C('yh_coupon_start_time')}" />
			    <span class="gray">采集的活动开始时间</span></td>
			</tr> 
		</table>
		</div>
        </div>
</form>
</div>
<script language="javascript" type="text/javascript">
$(function(){ 
	$('#info_form').ajaxForm({success:complate, dataType:'json'});
	function complate(result){
		if(result.status == 1){
			$.dialog.get(result.dialog).close();
			$.yhxia.tip({content:result.msg});
			window.location.reload();
		} else {
			$.yhxia.tip({content:result.msg, icon:'alert'});
		}
	} 
});
	Calendar.setup({
		inputField     :    "coupon_start_time",
		ifFormat       :    "%Y-%m-%d %H:%M",
		showsTime      :    'true',
		timeFormat     :    "24"
	});
</script>