<nav id="new-left-menu">
<div class="mask" id="menu-mask"></div>
<div class="menu-content">
<div class="find-wrapper clearfix">
<form data-ajax="false" method="get" action="/?" style="position: relative">
<input type="hidden" name="g" value="m">
<input type="hidden" name="m" value="index">
<input type="hidden" name="a" value="so">
<div class="border-btm clearfix">
<div class="input-wrapper">
<input autocomplete="off" type="text" name="k" placeholder="搜索商品">
</div>
<div class="search-btn-wrapper">
<button type="submit"></button>
</div>
</div>
<div class="r-border"></div>
</form>
</div>
<ul class="main-cat">
<li class="cat-item mm-nolistview">
<a rel="external" href="{:C('yh_headerm_html')}">
<span class="icon index"></span>
首页
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>2))}">
<span class="icon clothes"></span>
服装
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>1))}">
<span class="icon muyin"></span>
母婴
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>3))}">
<span class="icon hzp"></span>
化妆品
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>4))}">
<span class="icon jj"></span>
居家
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>5))}">
<span class="icon xbps"></span>
鞋包配饰
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>6))}">
<span class="icon ms"></span>
美食
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>7))}">
<span class="icon wtyp"></span>
文体用品
<span class="arrow"></span>
</a>
</li>
<li class="cat-item">
<a rel="external" href="{:U('index/cate', array('cid'=>8))}">
<span class="icon smjd"></span>
数码家电
<span class="arrow"></span>
</a>
</li>

</ul>
</div>
</nav>
<div id="foot">
<div class="foot-nav">
<a href="{:C('yh_site_url')}"><img src="/static/wap/images/phone.png">电脑版</a>
<a href="{:C('yh_app_kehuduan')}" class="joa_load_app">
<img src="/static/wap/images/client.png">客户端<img src="/static/wap/images/tip.png" class="icon-tips">
</a>
<a href="{:C('yh_headerm_html')}" class="_border"><img src="/static/wap/images/home.png">返回首页</a>
</div>
<div class="foot-copyright"></div><h2>Copyright © {:C('yh_site_name')}</h2>
</div>
<div class="toTop" onclick=" $('body,html').animate({scrollTop:0},1000);" style="position: fixed;
    right: 20px;
    bottom: 60px;
    font-family: iconfont;
    display: none;
    font-size: 37px;
    width: 40px;
    height: 40px;
    background-color: #fff;
    border: 1px solid #CCCCCC;
    border-radius: 50px;
    text-align: center;
    z-index: 80;
    line-height: 38px;
    color: #8c8c8c;">&#xe601;</div>
		<script type="text/javascript">
			window.setInterval("$('.ucautopager_guidebar').remove();$('.goods-item a').height($('.goods-item a').width());",100);
			$(".lazyload").lazyload({
				"placeholder": "/static/images/logo.jpg"
			});
		</script>
		
		<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        var menu = $('#new-left-menu');
        var menuHeight = $('#menu-mask').height();
        var windowHeight = $(window).height();
        $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');

        $(window).resize(function () {
            $(menu).find('.mask').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
            $(menu).find('.menu-content').css('height', (menuHeight > windowHeight ? menuHeight : windowHeight) + 'px');
        });

        $('.main-icon').click(function () {
            $(menu).css('z-index', 100);
            $(menu).addClass('opened-menu');
            $(menu).animate({left: 0},300);
        });
        $('#menu-mask').on('click',function () {
            $(menu).animate({left: -1 * $(window).width()},300,function(){
                $(menu).removeClass('opened-menu');
            });
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > 500) {
                $(".toTop").fadeIn(1500);
            }
            else {
                $(".toTop").fadeOut(1500);
            }
        });
    });
</script>

<style type="text/css">
/*foot start*/
#foot {
	width: 100%;
	height: 150px;
	position: relative;
	border-top: 1px solid rgba(255, 255, 255, 1);
	background:#fff;
	max-width: 640px;
    min-width: 320px;
    margin: 0px auto;
}
.foot-copyright:before {
	display: block;
	content: "";
	background-image: -webkit-gradient(radial, center center, 0, center center, 460, from(#b4b4b4), to(#efefef));
	background-image: -webkit-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: -moz-radial-gradient(circle, #b4b4b4, #efefef);
	background-image: radial-gradient(circle, #b4b4b4, #efefef);
	background-repeat: no-repeat;
	height: 1px;
	width:90%;
	margin:0 auto;
	overflow: hidden;
}
.foot-nav {
	padding:10px 0 20px;
	height: 80px;
	line-height: 40px;
	position: relative;
}
.foot-nav a {
	color: #666;
	display: inline-block;
	font-size: 15px;
	height: 25px;
	line-height: 25px;
	margin: 0 auto;
	width: 32%;
	text-align: center;
	border-right:#ccc solid 1px;
	position:relative;
}
.foot-nav a:hover {
	text-decoration: none;
	color:#f8285c;
}
.foot-nav a img{height:18px;vertical-align:-3px;margin-right:5px;}
.foot-nav a .icon-tips{position:absolute;bottom:-16px;left:30%;z-index:10;height:auto;width:53px;}
#foot h2 {
	font-size: 12px;
	font-weight: 500;
	display: block;
	position: absolute;
	color: rgba(153, 153, 153, 1);
	background: #fff;
	top: 70px;
	left: 50%;
	padding: 0 4px;
	margin-left: -76px;
}
._border{border:none !important;}
/*foot end*/
</style>
