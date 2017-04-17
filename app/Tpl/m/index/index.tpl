<!doctype html>
<html lang="zh-CN">
	<head>
		<include file="public:head" />
	</head>
	<body>
	<div id="load-more">
		<include file="public:header" />
		<include file="public:lunbo" />
		<include file="public:automatic_list" />
		<div class="page">
			{$page}
		</div>
	</div>
	<div class="clearfix"></div>
	<include file="public:footer" />
	<script language="javascript">
		$(document).ready(function () {
			var mySwiper = new Swiper('.swiper-container', {
				loop: true,
				autoplay: 2500
			});
			maxScrollY = $(document).height();
			windowHeight = $(window).height();
			$(window).on('resize', function () {
				windowHeight = $(window).height();
			});
			$(document).on("scrollstop", function (e) {
				if (isFinish || isLoading) {
					return;
				}
				var y = $(document).scrollTop();
				maxScrollY = $(document).height();
				windowHeight = $(window).height();
				if (Math.abs(maxScrollY - windowHeight - y) > 100) {
					return;
				}
				var $wrapper = $(this);
				if (!$pullUp) {
					$pullUp = $wrapper.find('.pullup-goods');
				}
				var data = null;
				getData($wrapper, data, 1);
			});
		});
	</script>
	</body>
</html>