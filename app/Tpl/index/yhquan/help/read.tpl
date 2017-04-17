<!doctype html>
<html>
<head>
<title>{$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<include file="public:head" />
<load href="__STATIC__/css/yhxia/article.css" />
<style type="text/css">
.mains,td,th {
	font-family: Tahoma, Helvetica, Arial, "宋体", sans-serif;
}

.content_text h2 {
	padding: 10px 0;
	font-size: 14px;
}

.content_text table td {
	text-indent: 12px;
}
</style>
</head>
<body>
<include file="public:header" />
 
<div style="width:1080px;margin:0 auto">
<div class="mains">
<div class="contant">
	<div class="white_top">
		<div class="white_top_left"></div>
		<div class="white_top_middle"></div>
		<div class="white_top_right"></div>
	</div>
	  <div class="main zhe_page">
		

<div class="piece content">
	  <div class="piece_box">
			<div class="content_tit" style="margin: auto 20px"><span>{$help.title}</span></div>
            <div class="content_text" style="margin: auto 20px"><div style="text-align: left;">
				<?php echo htmlspecialchars_decode($help['info']);?>
			</div></div>
		</div>
	</div>
	<div class="white_bottom">
		<div class="white_bottom_left"></div>
		<div class="white_bottom_middle"></div>
		<div class="white_bottom_right"></div>
	</div>
	</div>
</div>
</div>
</div>
	<include file="public:footer" />
</body>
</html>