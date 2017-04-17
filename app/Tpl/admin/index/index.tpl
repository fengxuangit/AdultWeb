<!doctype html>
<html class="off">
<head>
    <meta charset="utf-8" />
    <css file="__STATIC__/css/admin/style.css" />
    <title>{:L('website_manage')}</title>
    <script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<volist name=":L('js_lang')" id="val">
		lang.{$key} = "{$val}";
	</volist>
	</script>
</head>
<body scroll="no">
<div id="header">
	<div class="logo"><a href="__APP__" target="_blank" title="{:L('website_manage')}" style="FONT-FAMILY: 楷体">锦尚中国</a></div>
    <div class="fr">
    	<div class="cut_line admin_info tr">
			&nbsp;您好！<b>{$my_admin.username}</b> [{$my_admin.rolename}]
			&nbsp;&nbsp;&nbsp;<a href="{:C('yh_site_url')}" target="_blank">[ {:L('site_home')} ]</a>
        	&nbsp;&nbsp;&nbsp;<a href="{:u('index/logout')}">[ {:L('logout')} ]</a>
        </div>
    </div>
</div>
<div id="content">
	<div class="left_menu fl">
    	<div id="J_lmenu" class="J_lmenu" data-uri="{:U('index/left')}"></div>
        <a href="javascript:;" id="J_lmoc" style="outline-style: none; outline-color: invert; outline-width: medium;" hidefocus="true" class="open" title="{:L('expand_or_contract')}"></a>
    </div>
    <div class="right_main">
	    <ul class="nav white" id="J_tmenu">
			<li class="top_menu"><a href="javascript:;" data-id="0" hidefocus="true" style="outline:none;">后台管理</a></li>
			<volist name="top_menus" id="val" >
			<li class="top_menu"><a href="javascript:;" data-id="{$val.id}" hidefocus="true" style="outline:none;">{:L($val['name'])}</a></li>
			</volist>
		</ul>
    	<div class="crumbs">
        	<div class="options">
				<a href="javascript:;" title="{:L('refresh_page')}" id="J_refresh" class="refresh" hidefocus="true">{:L('refresh_page')}</a>
            	<a href="javascript:;" title="{:L('full_screen')}" id="J_full_screen" class="admin_full" hidefocus="true">{:L('full_screen')}</a>
                <a href="javascript:;" title="{:L('flush_cache')}" id="J_flush_cache" class="flush_cache" data-uri="{:U('cache/qclear')}" hidefocus="true">{:L('flush_cache')}</a>
            	<a href="javascript:;" title="{:L('background_map')}" id="J_admin_map" class="admin_map" data-uri="{:U('index/map')}" hidefocus="true">{:L('background_map')}</a>
			</div>
    		<div id="J_mtab" class="mtab">
            	<a href="javascript:;" id="J_prev" class="mtab_pre fl" title="上一页">上一页</a>
                <a href="javascript:;" id="J_next" class="mtab_next fr" title="下一页">下一页</a>
                <div class="mtab_p">
                    <div class="mtab_b">
                        <ul id="J_mtab_h" class="mtab_h"><li class="current" data-id="0"><span><a>后台首页</a></span></li></ul>
                    </div>
                </div>
            </div>
        </div>
    	<div id="J_rframe" class="rframe_b">
        	<iframe id="rframe_0" src="{:U('index/panel')}" frameborder="0" scrolling="auto" style="height:90%;width:100%;"></iframe>
        </div>
    </div>
</div>
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/yhxia.js"></script>
<script>
//初始化弹窗
(function (d) {
    d['okValue'] = lang.dialog_ok;
    d['cancelValue'] = lang.dialog_cancel;
    d['title'] = lang.dialog_title;
})($.dialog.defaults);
</script>
<script src="__TMPL__public/js/index.js"></script>
</body>
</html>