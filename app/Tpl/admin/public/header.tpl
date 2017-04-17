<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="__STATIC__/css/admin/style.css" rel="stylesheet"/>
	<title>{:L('website_manage')}</title>
	<script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var PAGE = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<volist name=":L('js_lang')" id="val">
		lang.{$key} = "{$val}";
	</volist>
	</script>
</head>

<body>
<div id="J_ajax_loading" class="ajax_loading">{:L('ajax_loading')}</div>
<if condition="($sub_menu neq '') OR ($big_menu neq '')">
<div class="subnav">
    <div class="content_menu ib_a blue line_x">
    	<notempty name="big_menu">
    	<a class="add fb J_showdialog" href="javascript:void(0);" data-uri="{$big_menu.iframe}" data-title="{$big_menu.title}" data-id="{$big_menu.id}" data-width="{$big_menu.width}" data-height="{$big_menu.height}"><em>{$big_menu.title}</em></a>　
        </notempty>
        <notempty name="sub_menu">
        <volist name="sub_menu" id="val" key="key">
        <if condition="$key neq 1"><span>|</span></if>
        <a href="{:U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid))}{$val.data}" class="{$val.class}"><em>{$val['name']}</em></a>
        </volist>
        </notempty>
    </div>
</div>
</if>