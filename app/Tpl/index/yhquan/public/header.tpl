<div id="navTop">
	<div id="top">
		<div id="topleft" style="margin-right: 8px;line-height: 25px;color:red;font-weight:bold;font-size:15px;border:1px solid #ddd;padding-right:20px;">  亲，感谢光顾我们的店铺 ，【天天双11！】加入官方群更多折上折内部优惠等着您！</div>
		<ul id="topright" style="line-height: 25px;">
			<li style=" margin-right: 8px;"><a href="{:C('yh_headerm_html')}" target="_blank" style="color: #757575" title="手机版">手机版</a></li>
			<li style="margin-right: 8px;"><a href="javascript:$.addBookmark(jQuery('.call-mark'),'{:C('yh_site_name')}','{:C('yh_site_url')}');" style="color: #757575" title="加入收藏，方便下次打开" _hover-ignore="1">加入收藏</a></li>
			<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('yh_qq')}&amp;site=qq&amp;menu=yes" style="color: #8da7cb" title="联系我帮你解答">遇到购物问题? 联系我 &gt;</a></li>
		</ul>
		<div class="clear"></div>
	</div>
</div>
<div class="head">
	<div class="area" id="logo">
		<div class="logo l">
				<h2><a href="{:C('yh_site_url')}" title="{:C('yh_site_name')}" rel="nofollow">{:C('yh_site_name')}</a></h2>
		</div>
		<div class="search r">
			<form id="query_form" method="get" action="__ROOT__/index.php">
				<div class="sort dropdown">
					<a class="pro first" href="">宝贝<i class="icon-arrow arrow-down"></i></a>
					<!--<div class="dropdown-menu"><a class="shop" href="" rel="nofollow">店铺</a>
					</div>-->
				</div>
				<p>
					<input type="hidden" name="m" value="index">
					<input type="hidden" name="a" value="so">
					<input type="text" name="k" class="Int" tooltip="懒得找了，我搜~~" value="" autocomplete="off" />
					<a href="javascript:;" onclick="document.getElementById('query_form').submit()" class="Btn" rel="nofollow"></a>
				</p>
			</form>
		</div>
		<div class="r">
			<ul>
				<li class="swot"><em class="mark"></em><em class="name">品质</em><em class="intro">9道人工质检</em>
				</li>
				<li class="plus">+</li>
				<li class="swot swot2"><em class="mark"></em><em class="name">低价</em><em class="intro">全网最低价</em>
				</li>
				<li class="eq">=</li>
				<li class="swot swot3"><em class="mark"></em><em class="intro">每天10点独家开抢</em>
				</li>
			</ul>
		</div>
	</div>
	<div id="head_nav">
		<div class="area clearfix">
			<div class="left"> <a href="{:U('index/index')}" <if condition="$nav_curr eq 'index'">class='on'</if>>{:L('index_page')}</a>
				<yh:nav type="lists" style="main">
					<volist name="data" id="val"> <a href="{$val.link}" <if condition="$nav_curr eq $val['alias']">class='on'</if> <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a>
					</volist>
				</yh:nav>
			</div>
			<div class="r" style="background: none;"><a href="{:C('yh_headerm_html')}" target="_blank">手机版</a>
			<a class="r" title="收藏网站" href="javascript:$.addBookmark(jQuery('.call-mark'),'{:C('yh_site_name')}','{:C('yh_site_url')}');">收藏本站</a>
			</div>
		</div>
	</div>
	<div id="subnav">
		<div class="area">	<a href="/" rel="nofollow" class="on">全部</a>
			<empty name="cate_list['s'][$cid]">
				<empty name="cate_list['s'][$cinfo['pid']]">
					<volist name="cate_list['p']" id="bcate"><a <if condition="$cid eq $bcate['id']">class="on"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></volist>
					<else />
					<volist name="cate_list['s'][$cinfo['pid']]" id="bcate"><a <if condition="$cid eq $bcate['id']">class="on"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></volist>
				</empty>
				<else />
				<empty name="cate_list['s'][$cinfo['pid']]">
					<volist name="cate_list['s'][$cid]" id="bcate"><a <if condition="$cid eq $bcate['id']">class="on"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></volist>
					<else />
					<volist name="cate_list['s'][$cinfo['pid']]" id="bcate"><a <if condition="$cid eq $bcate['id']">class="on"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></volist>
				</empty>
			</empty>	<i>|</i>
			<a href="{:U('xinpin/index')}" title="每天实时更新" rel="nofollow">今日新品<i class="new"></i></a>
			<div style="float: right;">
			<if condition="($nav_curr neq 'cid') AND ($nav_curr neq 'index')">
	            <a href="{:U("$nav_curr/index",array('sort'=>'new'))}" class="ju_nav <if condition="$index_info['sort'] eq 'new'"> on </if>">最新</a>            
	            <a href="{:U("$nav_curr/index",array('sort'=>'hot'))}" class="ju_nav <if condition="$index_info['sort'] eq 'hot'"> on </if>">最热</a>
				<a href="{:U("$nav_curr/index",array('sort'=>'price'))}" class="ju_nav <if condition="$index_info['sort'] eq 'price'"> on </if>">价格</a>            
	            <a href="{:U("$nav_curr/index",array('sort'=>'rate'))}" class="ju_nav <if condition="$index_info['sort'] eq 'rate'"> on </if>">折扣</a>
			<else/>
		       <notempty name="cid">           
	            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'new'))}" class="ju_nav <if condition="$index_info['sort'] eq 'new'"> on </if>">最新</a>            
	            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'hot'))}" class="ju_nav <if condition="$index_info['sort'] eq 'hot'"> on </if>">最热</a>
				<a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'price'))}" class="ju_nav <if condition="$index_info['sort'] eq 'price'"> on </if>">价格</a>            
	            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'rate'))}" class="ju_nav <if condition="$index_info['sort'] eq 'rate'"> on </if>">折扣</a>
				<else />            
	            <a href="{:U('index/index',array('sort'=>'new'))}" class="ju_nav <if condition="$index_info['sort'] eq 'new'"> on </if>">最新</a>
	            <a href="{:U('index/index',array('sort'=>'hot'))}" class="ju_nav <if condition="$index_info['sort'] eq 'hot'"> on </if>">最热</a>
				<a href="{:U('index/index',array('sort'=>'price'))}" class="ju_nav <if condition="$index_info['sort'] eq 'price'"> on </if>">价格</a>
	            <a href="{:U('index/index',array('sort'=>'rate'))}" class="ju_nav <if condition="$index_info['sort'] eq 'rate'"> on </if>">折扣</a>
	            </notempty>
			</if>
			</div>
		</div>
	</div>
</div>