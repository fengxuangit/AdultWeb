;(function($) {

	//举报
	$('.buy_ed').live('click', function(){
		if(!$.yhxia.dialog.islogin()) return !1;
		var znid = $(this).attr('znid');

		$.getJSON(FTXIAER.root+'/?m=ajax&a=report&znid='+znid, function(result){
			if(result.status == 1){
				$.dialog({id:'report', title:'举报中心', content:result.data, padding:'', fixed:true, lock:true});
				$.yhxia.item.report($('#J_report'));
			}else{
				$.yhxia.tip({content:result.msg, icon:'error'});
			}
		});
	});

 

})(jQuery);