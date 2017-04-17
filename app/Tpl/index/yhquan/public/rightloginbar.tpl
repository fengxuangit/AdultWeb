<div class="per_logo">
	<notempty name="visitor">
		<div class="per_info">
			<div class="per_icon">
				<a href="{:U('user/index')}">
					<img src="{:avatar($visitor['id'], 48)}">
				</a>
			</div>
			<div class="per_detail">
				<p class="per_user"><a href="{:U('user/index')}" class="per_name">{$visitor.username}</a>
				</p>
				<p class="all_juandou">{:L('exchange')}：<span class="user_score">{$visitor.score}</span>个</p>
				<p class="all_juandou"></p>
			</div>
		</div>
		<div class="juan_btn"><a class="signIn_btn" href="javascript:;">{:L('sign_out')}</a><a class="visit_btn" target="_blank" href="{:U('union/index')}">{:L('union_exchange')}</a>
		</div>
		<else/>
		<div class="juan_logged" data-item="44Oh5ouW54OC6Z6L4oiaIA==">
			<ul>
				<li class="register">
					<a href="{:U('user/register')}"></a>
				</li>
				<li class="logo_type">
					<dl>	<dt>推荐登录方式</dt>
						<volist name="oauth_list" id="val">
							<dd><a href="{:U('oauth/index', array('mod'=>$val['code']))}" class="icon_{$val['code']}" title="{$val.name}">{$val.name}</a>
							</dd>
						</volist>
					</dl>
				</li>
			</ul>
		</div>
		<div class="juan_btn">	<a href="javascript:;" target="_blank" class="signIn_btn">{:L('sign_out')}</a>
	<a href="{:U('union/index')}" target="_blank" class="visit_btn">{:L('union_exchange')}</a>
		</div>
	</notempty>
</div>
<div class="exchange_info">
		<h3><span>0元兑换</span><a href="{:U('gift/index')}" class="more" target="_blank">更多&gt;&gt;</a></h3>
	<yh:gift type="show">
		<volist name="data" id="val">
			<div class="goods_info">
				<div class="goods_img">
					<a href="{:U('gift/detail', array('id'=>$val['id']))}" target="_blank">
						<img src="{:attach($val['img'], 'score_item')}" width="54px" height="54px">
					</a>
				</div>
				<div class="goods_detail">
					<p class="goods_title"><a href="{:U('gift/detail', array('id'=>$val['id']))}" target="_blank" title="{$val.title}">{$val.title}</a>
					</p>
					<p class="goods_price">折扣价：{$val.coupon_price} 元</p>
					<p class="exchange_price">兑换：<b>{$val.score}</b>金币</p>
				</div>
			</div>
		</volist>
	</yh:gift>
</div>