<include file="public:header" />
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/yhxia.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<div class="pad_10">
	<div class="clearfix">

		<div class="col-2 fl mr10" style="width:48%">
			<h6>个人信息</h6>
			<div class="content" style="height:62px;">
				您好，<b style="color:#06C"> {$my_admin.username}</b> &nbsp;[超级管理员]<br />
				登录IP： {$ip} [ {$time}]<br />
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>提示建议</h6>
			<div class="content" style="height:62px;">
					<notempty name="message">
						<volist name="message" id="val">
						<div class="on{$val.type}">&nbsp;{$val.content}</div><br />
						</volist>
					</notempty>
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>

		<div class="bk10"></div>

		<div class="col-2 fl mr10" style="width:48%">
			<h6>系统信息</h6>
			<div class="content" style="height:113px;">
				<!--{:L('yhxia_version')}：<font style="color:#090">YouHun {$system_info.yhxia_version}</font> [最新版本]<span style="color: #260BEE;font-weight: bold;" id="new_version">6.0</span><span id="version_update">[在线升级]</span><br />-->

				{:L('server_os')}：{$system_info.server_os}<br />
				{:L('web_server')}：{$system_info.web_server}<br />
				{:L('php_version')}：{$system_info.php_version}<br />
				支持函数：<span class="{$system_info.curl}">远程读取</span>
				<span class="onCorrect">编码转换</span>
				<span class="{$system_info.zlib}">页面压缩</span>
				<br />
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>授权信息</h6>
			<div class="content" style="height:113px;">
				授权类型：<span><font color="green">购优惠系统正式授权</font></span><br />
</div>