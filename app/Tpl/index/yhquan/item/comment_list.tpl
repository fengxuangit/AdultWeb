<volist name="cmt_list" id="val">
<li uid="{$val.uid}" class="c_f">
	<span><img class="J_card avt fl r3" src="{:avatar($val['uid'], 48)}" data-uid="{$val.uid}" alt="admin"/></span>
	<p class="sms"><span class="n icard">{$val.uname}</span></p>
	<p class="sms">{$val.info}</p>
	<div><span>{$val.add_time|frienddate}</span></div>
</li>
</volist>