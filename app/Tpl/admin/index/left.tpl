<volist name="left_menu" id="val" >
<h3 class="f14">{$val.name}</h3>
<ul>
	<volist name="val['sub']" id="sval" >
    	<li class="sub_menu"><a href="javascript:;" data-uri="{:U($sval['module_name'].'/'.$sval['action_name'], array('menuid'=>$sval['id']))}{$sval.data}" data-id="{$sval.id}" hidefocus="true">{$sval.name}</a></li>
	</volist>
</ul>
</volist>