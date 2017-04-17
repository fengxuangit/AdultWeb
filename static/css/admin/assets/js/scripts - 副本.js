jQuery(document).ready(function() {
	$('.page-container form').submit(function() {
		var username = $(this).find('.username').val();
		var password = $(this).find('.password').val();
		if (username == '') {
			$(this).find('.error').fadeOut('fast', function() {
				$(this).css('top', '27px');
			});
			$(this).find('.error').fadeIn('fast', function() {
				$(this).parent().find('.username').focus();
			});
			return false;
		}
		if (password == '') {
			$(this).find('.error').fadeOut('fast', function() {
				$(this).css('top', '96px');
			});
			$(this).find('.error').fadeIn('fast', function() {
				$(this).parent().find('.password').focus();
			});
			return false;
		}
	});
	$('.page-container form .username, .page-container form .password').keyup(function() {
		$(this).parent().find('.error').fadeOut('fast');
	});

	$('.page-container').append('<div class="connect"><p><a href="http://shang.qq.com/wpa/qunwpa?idkey=b2b552fe57c3fea5d43075b586defd0ac4047c94989c05c73e6eecd613495489" target="_blank"><img border="0"  src="http://pub.idqqimg.com/wpa/images/group.png"></a></p></div>');
});