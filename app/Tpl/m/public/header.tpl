		<div class="main-title clearfix">
			<a class="mui-action-menu mui-pull-left main-icon" href="javascript:void(0)"></a>
			<h1 class="mui-title main-title-text"><if condition="$cate_name eq ''">{:C('yh_site_name')}<else/>{$cate_name}</if></h1>
			<a href="{:C('yh_headerm_html')}" rel="external" class="main-home"></a>
		</div>
		<div class="nav-bar">
			<ul class="nav-bar-list clearfix">
				<li <if condition="($nav_curr neq 'top100') AND ($nav_curr neq 'jingxuan')">class="active"<else/> rel="external"</if>><a rel="external" href="{:C('yh_headerm_html')}">今日新品</a></li>
				<li <if condition="$nav_curr eq 'top100'">class="active"<else/> rel="external"</if>><a href="{:U("top100/index")}">超级人气榜</a></li>
				<li <if condition="$nav_curr eq 'jingxuan'">class="active"<else/> rel="external"</if>><a href="{:U("jingxuan/index")}">优品特卖</a></li>
			</ul>
		</div>