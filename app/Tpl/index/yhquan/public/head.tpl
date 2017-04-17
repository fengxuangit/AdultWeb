{$yh|yh}<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>{$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<script src="__STATIC__/taotry/js/jquery.js" type="text/javascript"></script>
<script src="__STATIC__/taotry/js/base.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="__STATIC__/taotry/css/base.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/taotry/css/index.css" />
<css file="__STATIC__/css/yhxia/giftstyle.css" />
<script type="text/javascript">
	window.setInterval('$.getJSON("/?m=youhunquancaiji&a=index",{}, function(){});',30000);
</script>
<script type="text/javascript">
	var system ={win : false,mac : false,xll : false};
	var p = navigator.platform;
	system.win = p.indexOf("Win") == 0;
	system.mac = p.indexOf("Mac") == 0;
	system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
	if(system.win||system.mac||system.xll){}else{
	window.location.href="{:C('yh_headerm_html')}";}
</script>
{:C('yh_taojindian_html')}
