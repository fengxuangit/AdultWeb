(function(e,h,i){function j(b){return b}function k(b){return decodeURIComponent(b.replace(l," "))}var l=/\+/g,d=e.cookie=function(b,c,a){if(c!==i){a=e.extend({},d.defaults,a);null===c&&(a.expires=-1);if("number"===typeof a.expires){var f=a.expires,g=a.expires=new Date;g.setDate(g.getDate()+f)}c=d.json?JSON.stringify(c):String(c);return h.cookie=[encodeURIComponent(b),"=",d.raw?c:encodeURIComponent(c),a.expires?"; expires="+a.expires.toUTCString():"",a.path?"; path="+a.path:"",a.domain?"; domain="+
a.domain:"",a.secure?"; secure":""].join("")}c=d.raw?j:k;a=h.cookie.split("; ");for(f=0;g=a[f]&&a[f].split("=");f++)if(c(g.shift())===b)return b=c(g.join("=")),d.json?JSON.parse(b):b;return null};d.defaults={};e.removeCookie=function(b,c){return null!==e.cookie(b)?(e.cookie(b,null,c),!0):!1}})(jQuery,document);

jQuery.easing.jswing=jQuery.easing.swing;
jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,a,c,b,d){return jQuery.easing[jQuery.easing.def](e,a,c,b,d)},easeInQuad:function(e,a,c,b,d){return b*(a/=d)*a+c},easeOutQuad:function(e,a,c,b,d){return-b*(a/=d)*(a-2)+c},easeInOutQuad:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a+c:-b/2*(--a*(a-2)-1)+c},easeInCubic:function(e,a,c,b,d){return b*(a/=d)*a*a+c},easeOutCubic:function(e,a,c,b,d){return b*((a=a/d-1)*a*a+1)+c},easeInOutCubic:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a+c:
b/2*((a-=2)*a*a+2)+c},easeInQuart:function(e,a,c,b,d){return b*(a/=d)*a*a*a+c},easeOutQuart:function(e,a,c,b,d){return-b*((a=a/d-1)*a*a*a-1)+c},easeInOutQuart:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a*a+c:-b/2*((a-=2)*a*a*a-2)+c},easeInQuint:function(e,a,c,b,d){return b*(a/=d)*a*a*a*a+c},easeOutQuint:function(e,a,c,b,d){return b*((a=a/d-1)*a*a*a*a+1)+c},easeInOutQuint:function(e,a,c,b,d){return 1>(a/=d/2)?b/2*a*a*a*a*a+c:b/2*((a-=2)*a*a*a*a+2)+c},easeInSine:function(e,a,c,b,d){return-b*Math.cos(a/
d*(Math.PI/2))+b+c},easeOutSine:function(e,a,c,b,d){return b*Math.sin(a/d*(Math.PI/2))+c},easeInOutSine:function(e,a,c,b,d){return-b/2*(Math.cos(Math.PI*a/d)-1)+c},easeInExpo:function(e,a,c,b,d){return 0==a?c:b*Math.pow(2,10*(a/d-1))+c},easeOutExpo:function(e,a,c,b,d){return a==d?c+b:b*(-Math.pow(2,-10*a/d)+1)+c},easeInOutExpo:function(e,a,c,b,d){return 0==a?c:a==d?c+b:1>(a/=d/2)?b/2*Math.pow(2,10*(a-1))+c:b/2*(-Math.pow(2,-10*--a)+2)+c},easeInCirc:function(e,a,c,b,d){return-b*(Math.sqrt(1-(a/=d)*
a)-1)+c},easeOutCirc:function(e,a,c,b,d){return b*Math.sqrt(1-(a=a/d-1)*a)+c},easeInOutCirc:function(e,a,c,b,d){return 1>(a/=d/2)?-b/2*(Math.sqrt(1-a*a)-1)+c:b/2*(Math.sqrt(1-(a-=2)*a)+1)+c},easeInElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a)return c;if(1==(a/=d))return c+b;f||(f=0.3*d);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return-(g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f))+c},easeOutElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a)return c;if(1==
(a/=d))return c+b;f||(f=0.3*d);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return g*Math.pow(2,-10*a)*Math.sin((a*d-e)*2*Math.PI/f)+b+c},easeInOutElastic:function(e,a,c,b,d){var e=1.70158,f=0,g=b;if(0==a)return c;if(2==(a/=d/2))return c+b;f||(f=d*0.3*1.5);g<Math.abs(b)?(g=b,e=f/4):e=f/(2*Math.PI)*Math.asin(b/g);return 1>a?-0.5*g*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f)+c:0.5*g*Math.pow(2,-10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/f)+b+c},easeInBack:function(e,a,c,b,d,f){void 0==
f&&(f=1.70158);return b*(a/=d)*a*((f+1)*a-f)+c},easeOutBack:function(e,a,c,b,d,f){void 0==f&&(f=1.70158);return b*((a=a/d-1)*a*((f+1)*a+f)+1)+c},easeInOutBack:function(e,a,c,b,d,f){void 0==f&&(f=1.70158);return 1>(a/=d/2)?b/2*a*a*(((f*=1.525)+1)*a-f)+c:b/2*((a-=2)*a*(((f*=1.525)+1)*a+f)+2)+c},easeInBounce:function(e,a,c,b,d){return b-jQuery.easing.easeOutBounce(e,d-a,0,b,d)+c},easeOutBounce:function(e,a,c,b,d){return(a/=d)<1/2.75?b*7.5625*a*a+c:a<2/2.75?b*(7.5625*(a-=1.5/2.75)*a+0.75)+c:a<2.5/2.75?
b*(7.5625*(a-=2.25/2.75)*a+0.9375)+c:b*(7.5625*(a-=2.625/2.75)*a+0.984375)+c},easeInOutBounce:function(e,a,c,b,d){return a<d/2?0.5*jQuery.easing.easeInBounce(e,2*a,0,b,d)+c:0.5*jQuery.easing.easeOutBounce(e,2*a-d,0,b,d)+0.5*b+c}});

!function(a,b,c,d){var e=a(b);a.fn.lazyload=function(f){function g(){var b=0;i.each(function(){var c=a(this);if(!j.skip_invisible||c.is(":visible"))if(a.abovethetop(this,j)||a.leftofbegin(this,j));else if(a.belowthefold(this,j)||a.rightoffold(this,j)){if(++b>j.failure_limit)return!1}else c.trigger("appear"),b=0})}var h,i=this,j={threshold:0,failure_limit:0,event:"scroll",effect:"show",container:b,data_attribute:"original",skip_invisible:!0,appear:null,load:null,placeholder:"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"};return f&&(d!==f.failurelimit&&(f.failure_limit=f.failurelimit,delete f.failurelimit),d!==f.effectspeed&&(f.effect_speed=f.effectspeed,delete f.effectspeed),a.extend(j,f)),h=j.container===d||j.container===b?e:a(j.container),0===j.event.indexOf("scroll")&&h.bind(j.event,function(){return g()}),this.each(function(){var b=this,c=a(b);b.loaded=!1,(c.attr("src")===d||c.attr("src")===!1)&&c.is("img")&&c.attr("src",j.placeholder),c.one("appear",function(){if(!this.loaded){if(j.appear){var d=i.length;j.appear.call(b,d,j)}a("<img />").bind("load",function(){var d=c.attr("data-"+j.data_attribute);c.hide(),c.is("img")?c.attr("src",d):c.css("background-image","url('"+d+"')"),c[j.effect](j.effect_speed),b.loaded=!0;var e=a.grep(i,function(a){return!a.loaded});if(i=a(e),j.load){var f=i.length;j.load.call(b,f,j)}}).attr("src",c.attr("data-"+j.data_attribute))}}),0!==j.event.indexOf("scroll")&&c.bind(j.event,function(){b.loaded||c.trigger("appear")})}),e.bind("resize",function(){g()}),/(?:iphone|ipod|ipad).*os 5/gi.test(navigator.appVersion)&&e.bind("pageshow",function(b){b.originalEvent&&b.originalEvent.persisted&&i.each(function(){a(this).trigger("appear")})}),a(c).ready(function(){g()}),this},a.belowthefold=function(c,f){var g;return g=f.container===d||f.container===b?(b.innerHeight?b.innerHeight:e.height())+e.scrollTop():a(f.container).offset().top+a(f.container).height(),g<=a(c).offset().top-f.threshold},a.rightoffold=function(c,f){var g;return g=f.container===d||f.container===b?e.width()+e.scrollLeft():a(f.container).offset().left+a(f.container).width(),g<=a(c).offset().left-f.threshold},a.abovethetop=function(c,f){var g;return g=f.container===d||f.container===b?e.scrollTop():a(f.container).offset().top,g>=a(c).offset().top+f.threshold+a(c).height()},a.leftofbegin=function(c,f){var g;return g=f.container===d||f.container===b?e.scrollLeft():a(f.container).offset().left,g>=a(c).offset().left+f.threshold+a(c).width()},a.inviewport=function(b,c){return!(a.rightoffold(b,c)||a.leftofbegin(b,c)||a.belowthefold(b,c)||a.abovethetop(b,c))},a.extend(a.expr[":"],{"below-the-fold":function(b){return a.belowthefold(b,{threshold:0})},"above-the-top":function(b){return!a.belowthefold(b,{threshold:0})},"right-of-screen":function(b){return a.rightoffold(b,{threshold:0})},"left-of-screen":function(b){return!a.rightoffold(b,{threshold:0})},"in-viewport":function(b){return a.inviewport(b,{threshold:0})},"above-the-fold":function(b){return!a.belowthefold(b,{threshold:0})},"right-of-fold":function(b){return a.rightoffold(b,{threshold:0})},"left-of-fold":function(b){return!a.rightoffold(b,{threshold:0})}})}(jQuery,window,document);
var FANWE = new Object();
FANWE.GUID_TIME_OUT = null;
FANWE.NO_COUNTER = false;
FANWE.UPLOAD_IMAGE_SERVER = '';
FANWE.WEEBOX_NOT_CLOSES = new Object();

(function($){
	/*=====================会员BEGIN=====================*/
	//检测会员是否登陆
	$.Check_Login = function()
	{
		if(USER_ID == 0)
		{
			$.Show_Login_Form();
			return false;
		}
		else
			return true;
	}

	$.Show_Login_Form = function()
	{
		var numargs = arguments.length;
		var isModal,closeResult;
		isModal = true;
		closeResult = null;
		
		if(numargs > 0)
			isModal = arguments[0];
	
		if(numargs > 1)
			closeResult = arguments[1];

		$.weeboxs.close();
		$.weeboxs.open(SITE_PATH+"services/service.php?m=user&a=login", {contentType:'ajax',modal:isModal,draggable:false,showButton:false,title:LANG.login,width:600,onclose:closeResult});
	}
	
	$.Show_Tooltip = function(msg,isErr,t)
	{
		var t=t?t:1500;
		var readyFun = function(weebox){
			var fun = function()
			{
				$.weeboxs.close();
			}
			$("#TOOLTIP_BOX").width(weebox.dc.get(0).scrollWidth + 100);
			setTimeout(fun,t);
		};
		var c = 'lb_s';
		if(isErr)
			var c = 'lb_f';
		var html = '<div class="lb_tooltip"><a class="lb_close" href="javascript:;" onclick="$.weeboxs.close()"></a><div class="'+c+'">'+msg+'</div></div>';
		$.weeboxs.close();
		$.weeboxs.open(html, {boxid:'TOOLTIP_BOX',contentType:'text',draggable:false,showButton:false,showHeader:false,width:100,onready:readyFun});
	}

	//会员城市
	$.Bind_City = function(province,city,pid,cid)
	{
		var i;
		var count = CITYS.province.length;
		var provinceID,cityID,selected;
		var html = "";
		for(i = 0; i<count; i++)
		{
			provinceID = CITYS.province[i];
			if(pid == 0)
				pid = provinceID;

			if(pid == provinceID)
				selected = ' selected="selected"';
			else
				selected = '';

			html += '<option value="'+ provinceID +'"'+ selected +'>'+ CITYS.all[provinceID].name +'</option>';
		}

		$(province).html(html);

		$(province).change(function(){
			pid = this.value;
			count = CITYS.city[pid].length;
			html = '';
			for(i = 0; i<count; i++)
			{
				cityID = CITYS.city[pid][i];
				html += '<option value="'+ cityID +'">'+ CITYS.all[cityID].name +'</option>';
			}
			$(city).html(html);
		});
		html = '';
		count = CITYS.city[pid].length;
		for(i = 0; i<count; i++)
		{
			cityID = CITYS.city[pid][i];
			if(cid == cityID)
				selected = ' selected="selected"';
			else
				selected = '';

			html += '<option value="'+ cityID +'"'+ selected +'>'+ CITYS.all[cityID].name +'</option>';
		}

		$(city).html(html);
	}
	
	$.Bind_Province = function(province,pid)
	{
		var i;
		var count = CITYS.province.length;
		
		var provinceID,selected;
		var html = "";
		for(i = 0; i<count; i++)
		{
			provinceID = CITYS.province[i];
			if(pid == provinceID)
				selected = ' selected="selected"';
			else
				selected = '';

			html += '<option value="'+ provinceID +'"'+ selected +'>'+ CITYS.all[provinceID].name +'</option>';
		}
		$(province).append(html);
	}

	//关注会员，uid 要关注的会员编号，ojb 点击对像，fun 处理函数
	$.User_Follow=function(uid,obj,fun)
	{
		if(!$.Check_Login())
			return false;

		var query = new Object();
		query.uid = uid;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=user&a=follow",
			type: "POST",
			data:query,
			dataType: "json",
			success: function(result){
				if(result.html != null && fun == null)
					$(obj).html(result.html);
				
				if(fun != null)
				{
					result.uid = uid;
					fun.call(this,obj,result);
				}
			}
		});
	}
	
	//关注会员，uid 要关注的会员编号，ojb 点击对像，fun 处理函数
	$.User_Follows=function(uids,fun)
	{
		if(!$.Check_Login())
			return false;

		var query = new Object();
		query.uids = uids;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=user&a=follows",
			type: "POST",
			data:query,
			dataType: "json",
			success: function(result){
				fun.call(this,result);
			}
		});
	}

	//删除粉丝，uid 要删除的会员编号，fun 处理函数
	$.Remove_Fans=function(uid,obj,fun)
	{
		if(!$.Check_Login())
			return false;

		var query = new Object();
		query.uid = uid;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=user&a=removefans",
			type: "POST",
			data:query,
			dataType: "json",
			success: function(result){
				if(fun != null)
					fun.call(this,obj,result);
			}
		});
	}

	//推荐主题，tid 要推荐的主题编号，fun 处理函数
	$.Topic_Best = function(tid,func)
	{
		if(!$.Check_Login())
			return false;
		
		var readyFun = function(weebox)
		{
			FANWE.TOPIC_BEST_FUNC = func;
			$.Pub_Count_Bind($("#best_form_content").get(0));
		}
		
		$.weeboxs.open(SITE_PATH+"services/service.php?m=topic&a=getbest&id="+tid,{boxid:'TOPIC_BEST_BOX',contentType:'ajax',draggable:false,modal:true,showButton:false,showHeader:false,width:496,onready:readyFun});
	}
	
	$.Remove_Topic_Best =function(tid,obj,func)
	{
		var query = new Object();
		query.tid = tid;
		
		FANWE.TOPIC_BEST_FUNC = func;
		
		var url = SITE_PATH + 'services/service.php?m=topic&a=removebest';
		$(obj).attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).attr("disabled",true);
				if(result.status != -1)
				{
					if(FANWE.TOPIC_BEST_FUNC != null)
						FANWE.TOPIC_BEST_FUNC.call(this,result);
				}
			},
			error:function(){
				$(obj).attr("disabled",false);
			}
		});
	}
	
	$.Save_Topic_Best = function(obj)
	{
		if(!$.Check_Login())
			return false;
		
		var form = $(obj).parents("form").get(0);
		if($.trim(form.content.value) == '')
		{
			alert(LANG.content_require);
			return;
		}
		
		var url = SITE_PATH + 'services/service.php?m=topic&a=addbest';
		$(obj).hide();
		$('.sub_loading',form).show();
		$.ajax({
			url: url,
			type: "POST",
			data:$(form).serialize(),
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).attr("disabled",true);
				if(result.status != -1)
				{
					if(FANWE.TOPIC_BEST_FUNC != null)
						FANWE.TOPIC_BEST_FUNC.call(this,result);
					$.Show_Tooltip(LANG.best_topic_ok);
				}
				else
				{
					alert(result.msg_error);
				}
			},
			error:function(){
				$(obj).show();
				$('.sub_loading',form).hide();
			}
		});
	}
	
	$.Remove_Topic = function(tid,obj,rurl)
	{
		if(!$.Check_Login())
			return false;
		
		var query = new Object();
		query.tid = tid;
		var url = SITE_PATH + 'services/service.php?m=topic&a=remove';
		$(obj).attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				var fun = function()
				{
					location.href = rurl;
				}
				setTimeout(fun,1);
			},
			error:function(){
				$(obj).attr("disabled",false);
			}
		});
	}
	
	$.Remove_Vote = function(id,obj,fun)
	{
		if(!$.Check_Login())
			return false;
		
		var query = new Object();
		query.id = id;
		var url = SITE_PATH + 'services/service.php?m=vote&a=remove';
		$.Show_Btn_Loading(obj,true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				$.Remove_Btn_Loading(obj);
				fun.call(this);
			},
			error:function(){
				$.Remove_Btn_Loading(obj);
			}
		});
	}
	
	$.Remove_Activity = function(id,obj,fun)
	{
		if(!$.Check_Login())
			return false;
		
		var query = new Object();
		query.id = id;
		var url = SITE_PATH + 'services/service.php?m=activity&a=remove';
		$.Show_Btn_Loading(obj,true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				$.Remove_Btn_Loading(obj);
				fun.call(this);
			},
			error:function(){
				$.Remove_Btn_Loading(obj);
			}
		});
	}
	/*=====================会员END  =====================*/

	/*=====================表情BEGIN=====================*/
	//显示表情窗口
	$.Show_Expression = function(obj,height)
	{
		var readyFun = function(weebox){
			FANWE.Expression_HTML = weebox.dc.html();
			$.Expression_Init(weebox);
		};
		if(FANWE.Expression_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=expression",{boxid:'EXPRESSION_BOX',contentType:'ajax',position:{refele:obj},draggable:false,modal:false,showButton:false,showHeader:false,width:496,height:208,onready:readyFun});
		else
			$.weeboxs.open(FANWE.Expression_HTML,{boxid:'EXPRESSION_BOX',contentType:'text',position:{refele:obj},draggable:false,modal:false,showButton:false,showHeader:false,width:496,height:208,onready:readyFun});
	}

	//表情处理
	$.Expression_Init = function(weebox)
	{
		var refele = weebox.options.position.refele;
		var form = $(refele).parents("form");

		$("#expression_tabs li").click(function(){
			$("#expression_tabs li").removeClass("c");
			$(this).addClass("c");
			$.Get_Expression($(this).attr("f"),form);
		});

		$.Expression_Click(form);
	}

	//获取表情
	$.Get_Expression = function(type,form)
	{
		if(Expression_Items[type] != null)
		{
			$("#expression_items a").unbind();
			$("#expression_items").html(Expression_Items[type]);
			$.Expression_Click(form);
		}
	}

	//处理点击表情
	$.Expression_Click = function(form)
	{
		$("#expression_items a").bind("click",function(){
			var face = $.trim(this.getAttribute('rel'));
			if(face != '')
			{
				face = '['+ face +']';
				if($(".PUB_TXT",form).length == 0)
					return false;

				var txt = $(".PUB_TXT",form);
				var pos = parseInt(txt.attr("position"));
				var val = txt.val();

				if(txt.attr('length') != undefined)
				{
					var maxLength = parseInt(txt.attr('length'));
					if(val.length + face.length > maxLength)
						return false;
				}

				var begin = val.substr(0,pos);
				var end = val.substr(pos);
				txt.val(begin + face + end);
				txt.attr({"position":pos + face.length});
				$.Recount_Word(txt.get(0));
			}
		});
	}
	/*=====================表情END  =====================*/

	/*=====================话题BEGIN  =====================*/
	$.Event_Add = function(obj){
		if(!$.Check_Login())
			return;
		
		var form = $(obj).parents("form");
		if($(".PUB_TXT",form).length == 0)
			return false;
		
		var txt = $(".PUB_TXT",form);
		var default_text = "#输入话题标题#";
		var found = txt.val().search(default_text);
		
		if(found==-1)
		{
			var pos = parseInt(txt.attr("position"));
			var val = txt.val();

			if(txt.attr('length') != undefined)
			{
				var maxLength = parseInt(txt.attr('length'));
				var isCN = parseInt(txt.attr('isCN'));
				var length;
				if(isCN == 1)
				{
					maxLength = maxLength * 2;
					length = $.getStringLength(val);
					if(length + $.getStringLength(default_text) + 1 > maxLength)
						return false;
				}
				else
				{
					length = val.length;
					if(length + default_text.length + 1 > maxLength)
						return false;
				}
			}
			
			var begin = val.substr(0,pos);
			var end = val.substr(pos);
			txt.val(begin + default_text + " " + end);
			v = txt.val();
			found = v.search(default_text);
		}
		
		var start = found +1;
		var end = found + 7;
		
		var textObj = txt.get(0);
		if(textObj.setSelectionRange)
		{
			textObj.focus();
			textObj.setSelectionRange(start, end);
		}
		else if(textObj.createTextRange)
		{
			var range = textObj.createTextRange();
			range.collapse(true);
			range.moveEnd('character', end);
			range.moveStart('character', start);
			range.select();
		}
		$.Recount_Word(textObj);
	}
	/*=====================话题BEGIN=====================*/
	/*=====================@朋友BEGIN  =====================*/
	$.At_Add = function(obj){
		if(!$.Check_Login())
			return;
		
		var form = $(obj).parents("form");
		if($(".PUB_TXT",form).length == 0)
			return false;
		var txt = $(".PUB_TXT",form);
		var default_text = "@朋友:";
		var found = txt.val().search(default_text);
		if(found==-1)
		{
			var pos = parseInt(txt.attr("position"));
			var val = txt.val();

			if(txt.attr('length') != undefined)
			{
				var maxLength = parseInt(txt.attr('length'));
				var isCN = parseInt(txt.attr('isCN'));
				var length;
				if(isCN == 1)
				{
					maxLength = maxLength * 2;
					length = $.getStringLength(val);
					if(length + $.getStringLength(default_text) + 1 > maxLength)
						return false;
				}
				else
				{
					length = val.length;
					if(length + default_text.length + 1 > maxLength)
						return false;
				}
			}
			
			var begin = val.substr(0,pos);
			var end = val.substr(pos);
			txt.val(begin + default_text + " " + end);
			v = txt.val();
			found = v.search(default_text);
		}
		var start = found +1;
		var end = found + 3;
		var textObj = txt.get(0);
		if (textObj.setSelectionRange)
		{
			textObj.focus();
			textObj.setSelectionRange(start, end);
		}
		else if(textObj.createTextRange)
		{
			var range = textObj.createTextRange();
			range.collapse(true);
			range.moveEnd('character', end);
			range.moveStart('character', start);
			range.select();
		}
		$.Recount_Word(textObj);
	}
	/*=====================@朋友BEGIN=====================*/
	/*=====================宝贝BEGIN=====================*/
	//显示商品添加窗口
	$.Goods_Add = function(obj)
	{
		if(!$.Check_Login())
			return;

		var form = $(obj).parents("form");
		if($.Get_Goods_Count(form) >= SETTING.share_goods_count)
		{
			alert(LANG.goods_collect_3.replace('%d',SETTING.share_goods_count));
			return;
		}

		$.weeboxs.close();
		var closeFun = function(){
			$.Goods_Collect_Clear();
		};
		var readyFun = function(weebox){
			FANWE.Goods_Collect_HTML = weebox.dc.html();
			$.Goods_Init(weebox);
		};
		if(FANWE.Goods_Collect_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=addgoods",{boxid:'ADD_GOODS_BOX',contentType:'ajax',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
		else
			$.weeboxs.open(FANWE.Goods_Collect_HTML,{boxid:'ADD_GOODS_BOX',contentType:'text',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
	}

	//采集商品初始化
	$.Goods_Init = function(weebox)
	{
		$('.GOODS_COLLECT',weebox.dc).click(function(){
			$.Goods_Collect(weebox);
		});
	}
	//采集商品
	$.Goods_Collect = function(weebox,resultFun)
	{
		var refele = weebox.options.position.refele;
		var form = $(refele).parents("form");
		var query = form.serialize();
		var url = $.trim($('.GOODS_URL',weebox.dc).val());
		
		if(url == '')
		{
			alert(LANG.goods_collect_5);
			return;
		}
		if(!$.checkUrl(url)){
			$.Show_MiNiTooltip($('.GOODS_URL',weebox.dc),"GOODS_URL_TIP","请输入正确的URL地址！<br />注：以http://开头");
			$('#GOODS_URL_TIP').css('zIndex',9999);
			return;
		}

		$('.PUB_LOADING',weebox.dc).show();
		$('.GOODS_BOX',weebox.dc).hide();

		$.Goods_Collect_Clear();
		FANWE.Goods_Collect_Handler = new Object();
		if(resultFun)
		{
			FANWE.Goods_Collect_Handler.fun = resultFun;
		}
		else
		{
			FANWE.Goods_Collect_Handler.fun = function(result){
				$.Goods_Collect_Result(result,weebox,form);
			};
		}
		
		query += "&url="+escape(url)+"&image_server="+FANWE.UPLOAD_IMAGE_SERVER;

		FANWE.Goods_Collect_Handler.ajax = $.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=collectgoods",
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				if(result.status == 1)
					FANWE.UPLOAD_IMAGE_SERVER = result.image_server;

				if(FANWE.Goods_Collect_Handler.fun != null)
					FANWE.Goods_Collect_Handler.fun(result);
			},
			error:function(){
				alert(LANG.goods_collect_4);
				$.Goods_Close();
			}
		});
	}

	//处理采集返回的结果
	$.Goods_Collect_Result = function(result,weebox,form)
	{
		FANWE.Goods_Collect_Handler.fun = null;
		FANWE.Goods_Collect_Handler.ajax = null;
		FANWE.Goods_Collect_Handler = null;

		if(result.status == 1)
		{
			$('.PUB_IMG',form).parent().show();
			if($('.PUB_IMG .PUB_LOOK_DAPEI',form).length > 0)
				$('.PUB_IMG .PUB_LOOK_DAPEI',form).eq(0).before(result.item);
			else
				$('.PUB_IMG',form).append(result.item);
			var info = jQuery.parseJSON(Base64.decode(result.info));
			if(info.item.id == 0 && info.item.type == 'taobao')
			{
				TOP.api('rest','post',{
					method:'taobao.taobaoke.widget.items.convert',
					fields:'click_url,shop_click_url,commission_rate,commission',
					num_iids:info.item.gid
				},function(resp){
					try
					{
						var goods = resp.taobaoke_items.taobaoke_item[0];
						info.item.commission = goods.commission;
						info.item.user_commission = Math.floor(goods.commission * USER_COMMISSION_RATE) / 100;
						info.item.commission_rate = goods.commission_rate;
						info.item.taoke_url = goods.click_url;
						if(info.shop)
							info.shop.taoke_url = goods.shop_click_url;
						$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
//						if(info.item.user_commission > 0)
//						{
//							$(".PUB_GOODS_DETAILED .PGD_COMMISSION",form).show();
//							$(".PUB_GOODS_DETAILED span.PGD_COMMISSION",form).html("¥" + info.item.user_commission);
//						}
					}
					catch(e){};
				});
			}
			
			if($.checkUrl(info.item.img))
			{
				$.Get_Image_Size(info.item.img,function(width,height){
					//info = jQuery.parseJSON(Base64.decode($(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val()));
					info.item.image_width = width;
					info.item.image_height = height;
					$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
					if(info.shop && $.checkUrl(info.shop.logo))
					{
						$.Get_Image_Size(info.shop.logo,function(width,height){
							//info = jQuery.parseJSON(Base64.decode($(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val()));
							info.shop.image_width = width;
							info.shop.image_height = height;
							$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
						});
					}
				});
			}
			
			/*weebox.setContent(result.html,true);
			weebox.dc.ready(function(){
				if($('.TIME_OUT_CLOSE[time]',weebox.dc).length > 0)
					$.Goods_Close_Timer(weebox);
			});*/
			$(".PUB_IMG li[key='"+ info.item.key +"'] span",form).click();
			$.Pub_Share_Tags(form);
			if(FANWE.UPLOAD_IMAGE_RESULT_FUNC)
				FANWE.UPLOAD_IMAGE_RESULT_FUNC.call(this,form);
			$.Goods_Close();
			return;
		}
		else if(result.status == 0)
		{
			alert(LANG.goods_collect_4);
		}
		else if(result.status == -1)
		{
			alert(LANG.goods_collect_2);
		}
		else if(result.status == -2)
		{
			alert(LANG.goods_collect_3.replace('%d',SETTING.share_goods_count));
		}
		else if(result.status == -3)
		{
			alert(LANG.goods_collect_6);
		}
		else if(result.status == -4)
		{
			alert(LANG.goods_collect_7);
		}
		else if(result.status == -5)
		{
			alert(LANG.goods_collect_8);
		}
		else if(result.status == -6)
		{
			alert(LANG.goods_collect_9);
		}
		$.Goods_Close();
	}

	//timer关闭商品添加窗口
	$.Goods_Close_Timer = function(weebox)
	{
		var timeout = $('.TIME_OUT_CLOSE',weebox.dc);
		var time = parseInt(timeout.attr("time"));
		if(isNaN(time) || time <= 0)
		{
			FANWE.Goods_Collect_Close_Timer = null;
			delete FANWE.Goods_Collect_Close_Timer;
			$.Goods_Close();
			return;
		}
		timeout.val(LANG.goods_collect_1.replace('%d',time));
		time--;
		timeout.attr({"time":time});

		var timerFun = function(){
			$.Goods_Close_Timer(weebox);
		};
		FANWE.Goods_Collect_Close_Timer = setTimeout(timerFun,1000);
	}

	//关闭商品添加窗口
	$.Goods_Close = function()
	{
		$.Goods_Collect_Clear();
		$.weeboxs.close();
	}

	//清除商品的采集
	$.Goods_Collect_Clear = function()
	{
		if(FANWE.Goods_Collect_Handler != null)
		{
			FANWE.Goods_Collect_Handler.fun = null;
			FANWE.Goods_Collect_Handler.ajax.abort();
			FANWE.Goods_Collect_Handler.ajax = null;
			FANWE.Goods_Collect_Handler = null;
		}
	}

	//获取已发布商品的数量
	$.Get_Goods_Count = function(form)
	{
		return $('.PUB_IMG .PUB_SHARTE_GOODS',form).length;
	}
	/*=====================宝贝END  =====================*/

	/*=====================图片BEGIN=====================*/
	//显示商品添加窗口
	$.Pic_Add = function(obj)
	{
		if(!$.Check_Login())
			return;

		var form = $(obj).parents("form");
		if($.Get_Pic_Count(form) >= SETTING.share_pic_count)
		{
			alert(LANG.upload_pic_1.replace('%d',SETTING.share_pic_count));
			return;
		}

		$.weeboxs.close();
		var closeFun = function(){
			$.Pic_Upload_Clear();
		};
		var readyFun = function(weebox){
			FANWE.Pic_Upload_HTML = weebox.dc.html();
			$.Pic_Init(weebox);
		};
		if(FANWE.Pic_Upload_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=addpic",{boxid:'ADD_PIC_BOX',contentType:'ajax',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
		else
			$.weeboxs.open(FANWE.Pic_Upload_HTML,{boxid:'ADD_PIC_BOX',contentType:'text',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
	}

	//上传图片初始化
	$.Pic_Init = function(weebox,resultFun)
	{
		var refele,form;
		if(!resultFun)
		{
			refele = weebox.options.position.refele;
			form = $(refele).parents("form");
		}
		if(IS_IMAGE_SERVERS == 1)
		{
			FANWE.UPLOAD_PHOTO_RESULT_FUNC = resultFun;
			FANWE.UPLOAD_PHOTO_REFELE_FORM = form;
			var flashvars = {
				siteUrl:SITE_URL,
				btnUrl:TPL_PATH + "images/uploadpic.png",
				imageServer:FANWE.UPLOAD_IMAGE_SERVER,
				type:"uploadphoto"
			};

			var params = {
				wmode: "transparent",
				allowScriptAccess: "always"
			};
			//var data = new Date();data.toGMTString()
			swfobject.embedSWF(PUBLIC_PATH + "swf/upload33.swf", "UPLOAD_PHOTO_FLASH_BOX", "181", "28", "9.0.0", null, flashvars, params);
		}
		else
		{
			var file = $('.PUB_PIC_FILE',weebox.dc).get(0);
			file.onchange = function(){
				$('.PUB_LOADING',weebox.dc).show();
				$('.PIC_BOX',weebox.dc).hide();
				var type = $(".photo_type:checked",weebox.dc).val();
				FANWE.Pic_Upload_Obj = $.ajaxFileUpload(
				{
					url:SITE_PATH+"services/service.php?m=share&a=uploadpic&photo_type="+type,
					secureuri:false,
					fileElementId:'Pub_Upload_Pic',
					fileElement:file,
					success:function(result,status){
						result = $('textarea',result).val();
						result = $.parseJSON(result);
						if(result.status == 1)
						{
							if(resultFun)
								resultFun.call(this,result);
							else
							{
								$('.PUB_IMG',form).parent().show();
								if (FANWE.Pub_Share_Img_Status){
									$('.PUB_IMG .PUB_SHARTE_IMAGE img',form).eq(0).attr("src", "../."+result.img);
									if ($('.PUB_IMG .INFO_TYPE').val() == "goods"){
										$('.PUB_IMG .PUB_SHARTE_IMAGE .NEW_GOODS_IMG',form).eq(0).val(result.img);
									}
									else {
										$('.PUB_IMG .PUB_SHARTE_IMAGE .PHOTO_INFO',form).eq(0).val(result.info);
									}
									
									FANWE.Pub_Share_Img_Status = false;
								}
								else {
									if($('.PUB_IMG .PUB_LOOK_DAPEI',form).length > 0)
										$('.PUB_IMG .PUB_LOOK_DAPEI',form).eq(0).before(result.html);
									else
										$('.PUB_IMG',form).append(result.html);
								}
								
								if(FANWE.UPLOAD_IMAGE_RESULT_FUNC)
									FANWE.UPLOAD_IMAGE_RESULT_FUNC.call(this,form);
							}
						}
						else if(result.status == 0)
						{
							if(result.error_code == -105)
								alert("亲，你上传的图片太大了哦！");
							else
								alert(LANG.upload_pic_2);
						}
						$.Pic_Close();
					},
					error:function(s, xml, status, e){
						$.Pic_Close();
					}
				});
			};
		}
		
		$(".webpic_button",weebox.dc).click(function(){
			$(".WEB_PIC_BTN_1,#UPLOAD_PHOTO_FLASH_BOX",weebox.dc).hide();
			$(".WEB_PIC_BTN_2",weebox.dc).show();
		});
		
		$(".webpic_input",weebox.dc).focus(function(){
			if($.trim(this.value) == $(this).attr("default"))
			{
				this.value = "";
				$(this).removeClass("tipcolor");
			}
		});
		
		$(".webpic_input",weebox.dc).blur(function(){
			if($.trim(this.value) == $(this).attr("default") || $.trim(this.value) == "")
			{
				this.value = $(this).attr("default");
				$(this).addClass("tipcolor");
			}
		});
		
		$('.webpic_submit',weebox.dc).click(function(){
			$.Upload_Web_Pic(this,form,resultFun);
		});
	}
	
	$.Upload_Web_Pic = function(obj,form,resultFun)
	{
		var parent = $(obj).parents("#lb_pic");
		var url = $.trim($(".webpic_input",parent).val());
		if(!$.checkUrl(url))
		{
			$.Show_MiNiTooltip($(".webpic_input",parent),"WEBPIC_UPLOAD_TIP","亲，请输入正确的图片URL地址哦！",false,1,parent);
		}
		else
		{
			$('.PUB_LOADING',parent).css({"position":"absolute","z-index":1,"left":0,"top":0,"width":parent.width()-60,"height":parent.height()-60,"background":"#ffffff"});
			$('.PUB_LOADING',parent).show();
			$.Get_Image_Size(url,function(width,height){
				var query = new Object();
				query.url = url;
				query.width = width;
				query.height = height;
				query.image_server=FANWE.UPLOAD_IMAGE_SERVER;
				
				FANWE.Pic_Upload_Obj = $.ajax({
					url: SITE_PATH+"services/service.php?m=share&a=uploadwebpic",
					type: "POST",
					data:query,
					cache:false,
					dataType: "json",
					success:function(result){
						if(result.status == 1)
						{
							FANWE.UPLOAD_IMAGE_SERVER = result.image_server;
//							2013.1.10 杨龙济  原分享网络图片，需开启图片服务器(开启后，才会调用下面UPLOAD_PHOTO_RESULT_FUNC这个方法)  
//							if(FANWE.UPLOAD_PHOTO_RESULT_FUNC)
//								FANWE.UPLOAD_PHOTO_RESULT_FUNC.call(this,result);
							if(resultFun)
								resultFun.call(this,result);
							else
							{
								$('.PUB_IMG',form).parent().show();
								if (FANWE.Pub_Share_Img_Status){
									$('.PUB_IMG .PUB_SHARTE_IMAGE img',form).eq(0).attr("src", result.img);
									if ($('.PUB_IMG .INFO_TYPE').val() == "goods"){
										$('.PUB_IMG .PUB_SHARTE_IMAGE .NEW_GOODS_IMG',form).eq(0).val(result.img);
									}
									else {
										$('.PUB_IMG .PUB_SHARTE_IMAGE .PHOTO_INFO',form).eq(0).val(result.info);
									}
									FANWE.Pub_Share_Img_Status = false;
								}
								else {
									if($('.PUB_IMG .PUB_LOOK_DAPEI',form).length > 0)
										$('.PUB_IMG .PUB_LOOK_DAPEI',form).eq(0).before(result.html);
									else
										$('.PUB_IMG',form).append(result.html);
								}								
									
								if(FANWE.UPLOAD_IMAGE_RESULT_FUNC)
									FANWE.UPLOAD_IMAGE_RESULT_FUNC.call(this,form);
							}
						}
						else if(result.status == 0)
						{
							$('.PUB_LOADING',parent).hide();
							if(result.error_code == -105)
								$.Show_MiNiTooltip($(".webpic_input",parent),"WEBPIC_UPLOAD_TIP","亲，你上传的图片太大了哦！",false,1,parent);
							else
								$.Show_MiNiTooltip($(".webpic_input",parent),"WEBPIC_UPLOAD_TIP",LANG.upload_pic_2,false,1,parent);
							return false;
						}
						
						$.Pic_Close();
					},
					error:function(){
						$.Pic_Close();
					}
				});
			},function(){
				$('.PUB_LOADING',parent).hide();
				$.Show_MiNiTooltip($(".webpic_input",parent),"WEBPIC_UPLOAD_TIP","亲，请输入正确的图片URL地址哦！",false,1,parent);
			});	
		}
		return false;
	}

	$.Get_Pic_Type = function()
	{
		var form = $("#UPLOAD_PHOTO_FLASH_BOX").parents("#lb_pic");
		$('.PUB_LOADING',form).css({"position":"absolute","z-index":1,"left":0,"top":0,"width":form.width()-60,"height":form.height()-60,"background":"#ffffff"});
		$('.PUB_LOADING',form).show();
		return 'default';
	}

	$.Upload_Photo_Complete = function(result,server)
	{
		result = jQuery.parseJSON(Base64.decode(result));
		if(result.status == 1)
		{
			FANWE.UPLOAD_IMAGE_SERVER = server;
			if(FANWE.UPLOAD_PHOTO_RESULT_FUNC)
				FANWE.UPLOAD_PHOTO_RESULT_FUNC.call(this,result);
			else
			{
				$('.PUB_IMG',FANWE.UPLOAD_PHOTO_REFELE_FORM).parent().show();
				if($('.PUB_IMG .PUB_LOOK_DAPEI',FANWE.UPLOAD_PHOTO_REFELE_FORM).length > 0)
					$('.PUB_IMG .PUB_LOOK_DAPEI',FANWE.UPLOAD_PHOTO_REFELE_FORM).eq(0).before(result.html);
				else
					$('.PUB_IMG',FANWE.UPLOAD_PHOTO_REFELE_FORM).append(result.html);
				if(FANWE.UPLOAD_IMAGE_RESULT_FUNC)
					FANWE.UPLOAD_IMAGE_RESULT_FUNC.call(this,FANWE.UPLOAD_PHOTO_REFELE_FORM);
			}
		}
		else if(result.status == 0)
		{
			alert(LANG.upload_pic_2);
		}
		
		FANWE.UPLOAD_PHOTO_REFELE_FORM = null;
		$.Pic_Close();
	}

	$.Clear_Upload = function(id)
	{
		if($("#"+id).length > 0)
		{
			try
			{
				document.getElementById(id).ClearUpload();
			}
			catch(e){}
		}
	}

	$.Upload_Alert = function(msg)
	{
		alert(msg);
	}

	//关闭图片添加窗口
	$.Pic_Close = function()
	{
		$.Pic_Upload_Clear();
		$.weeboxs.close();
		if(typeof(PicItemCheckFun) == "function")
			PicItemCheckFun();
	}

	//清除正在上传的操作
	$.Pic_Upload_Clear = function()
	{
		$.Clear_Upload("UPLOAD_PHOTO_FLASH_BOX");
		FANWE.UPLOAD_PHOTO_RESULT_FUN = null;
		if(FANWE.Pic_Upload_Obj != null)
		{
			FANWE.Pic_Upload_Obj.abort();
			FANWE.Pic_Upload_Obj = null;
		}
	}

	//获取已发布图片的数量
	$.Get_Pic_Count = function(form)
	{
		return $('.PUB_IMG .PUB_SHARTE_PIC',form).length;
	}
	/*=====================图片END  =====================*/

	/*=====================分享发布BEGIN=====================*/
	//发布时删除分享图片的处理
	$.Pub_Share_Img_Remove = function(obj)
	{
		var form = $(obj).parents("form");
		var oparent = $(obj).parent();
		var rparent = oparent.parent().parent();
		oparent.remove();
		$.Pub_Share_Tags(form);
		
		if($('.PUB_IMG li',form).length == 0)
			rparent.hide();
			
		if(FANWE.UPLOAD_IMAGE_RESULT_FUNC)
			FANWE.UPLOAD_IMAGE_RESULT_FUNC.call(this,form);
		
		if(typeof(PicItemCheckFun) == "function")
			PicItemCheckFun();
	}
	
	//发布时第一个图片可以修改
	$.Pub_Share_Img_Update = function(obj){
		if(!$.Check_Login())
			return;

		var form = $(obj).parents("form");
		if($.Get_Pic_Count(form) >= SETTING.share_pic_count)
		{
			alert(LANG.upload_pic_1.replace('%d',SETTING.share_pic_count));
			return;
		}

		$.weeboxs.close();
		var closeFun = function(){
			$.Pic_Upload_Clear();
		};
		var readyFun = function(weebox){
			FANWE.Pic_Upload_HTML = weebox.dc.html();
			FANWE.Pub_Share_Img_Status = true;
			$.Pic_Init(weebox);
		};
		if(FANWE.Pic_Upload_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=addpic",{boxid:'ADD_PIC_BOX',contentType:'ajax',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
		else
			$.weeboxs.open(FANWE.Pic_Upload_HTML,{boxid:'ADD_PIC_BOX',contentType:'text',position:{refele:obj},draggable:false,modal:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
	}

	//发布时根据分享商品确定是否显示标签输入
	$.Pub_Share_Tags = function(form)
	{
		if($('.PUB_IMG .PUB_SHARTE_GOODS',form).length == 0 || SETTING.share_is_tag == 0)
		{
			$('.PUB_SHARE_TAG_BOX',form).hide();
		}
		else
		{
			$('.PUB_SHARE_TAG_BOX',form).show();
			var tags = new Array();
			$(".GOODS_ITEM_TAG",form).each(function(){
				tags.push(this.value.split(' '));
			});

			if(tags.length > 0)
			{
				var activeTags = $(".PUB_SHARE_TAG",form).val();
				if(activeTags != '')
				{
					activeTags = activeTags.replace('　',' ');
					activeTags = activeTags.replace(/ +/g,' ');
					activeTags = ' ' + $.trim(activeTags) + ' ';
				}

				var html = '';
				var tagCount = SETTING.share_tag_count;
				var tempObj = new Object();
				var tag = '';
				for(var i = 0; i < tagCount; i++)
				{
					for(var j=0; j < tags.length; j++)
					{
						if(tags[j].length > i)
						{
							tag = tags[j][i];
							if(tempObj[tag] == null)
							{
								tempObj[tag] = 1;
								if(activeTags.indexOf(' ' + tag + ' ') == -1)
									html += '<li>'+ tag +'</li>';
								else
									html += '<li class="active">'+ tag +'</li>';
							}
						}
					}
				}
				delete tempObj;
				$(".PUB_SHARE_TAG_BOX ul",form).html(html).show();
			}
			else
			{
				$(".PUB_SHARE_TAG_BOX ul",form).hide();
			}
		}
	}

	//分享图片排序操作
	$.Pub_Img_Sort = function(form)
	{
		$('.PUB_IMG li',form).each(function(i){
			$('.share_sort',this).val(i + 1);
		});
	}

	//分享重置
	$.Pub_Share_Reset = function(form)
	{
		var aid = $(".PUB_ALBUM_ID").val();
		form.reset();
		$(".PUB_ALBUM_ID").val(aid);
		$('.PUB_IMG li:not(.PUB_LOOK_DAPEI)',form).remove();
		if($('.PUB_IMG li.PUB_LOOK_DAPEI',form).length > 0)
			$('.PUB_IMG li.PUB_LOOK_DAPEI',form).show();
		else
			$('.PUB_IMG',form).parent().hide();
		
		$('.PUB_SHARE_TAG',form).val("");
		$('.PUB_SHARE_TAG_BOX ui',form).html("");
		$('.PUB_SHARE_TAG_BOX',form).hide();
		$('.PUB_TXT',form).val("");
		$.Recount_Word($('.PUB_TXT',form).get(0));
	}

	$.Share_Save = function(obj)
	{
		if(!$.Check_Login())
			return false;

        var form = $(obj).parents("form").get(0);
		var module = $.trim(form.module.value);
		var action = $.trim(form.action.value);
		var url = SITE_PATH + 'services/service.php?m=' + module + '&a=' + action;
		var content = $.trim(form.content.value);
		if (FANWE.SHARE_ID == undefined || FANWE.SHARE_ID == 0){
			if(content == '')
			{
				alert(LANG.share_content_require);
				return;
			}
		}
		
		var albumid = parseInt(form.albumid.value);
		if(albumid > 0 && $(".PUB_IMG li",form).length == 0)
		{
			alert(LANG.share_album_img_require);
			return;
		}

		$.Pub_Img_Sort(form);
		var butTxt = $(obj).val();

		$(obj).val('').addClass('pub_loading').attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:$(form).serialize(),
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).val(butTxt).removeClass('pub_loading').attr("disabled",false);
				if(result.status == 1)
				{
					if(FANWE.SHARE_SAVE_RESULT_FUNC)
						FANWE.SHARE_SAVE_RESULT_FUNC.call(this,result);
					else
					{
						$("#SHARE_DETAIL_LiST_EMPTY").remove();
						$.Pub_Share_Reset(form);
						var share_item = $(result.html).css({"display":"none"});
						$("#SHARE_DETAIL_LiST").prepend(share_item);
						share_item.slideDown("slow");
					}
				}
				else
				{
					if(result.error_msg)
						alert(result.error_msg);
					else
						alert(LANG.pub_share_tip1);
				}
			},
			error:function(){
				$(obj).val(butTxt).removeClass('pub_loading').attr("disabled",false);
				alert(LANG.pub_share_tip1);
			}
		});
    };

	$.Tweet_Delete = function(share_id,type)
	{
		var query = new Object();
		query.id = share_id;
		query.type = type;

		$.ajax({
			url:SITE_PATH+"manage/manage.php?m=share&a=delete",
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				if(result.status == 1)
				{
					var share_item = $('#SHARE_LIST_'+share_id);
					share_item.slideUp("slow");
				}
			}
		});
	}
	/*=====================分享发布END  =====================*/

    /*=====================@她 BEGIN=====================*/
	//显示@她
	$.AtMe_Share = function(obj)
	{
		if(!$.Check_Login())
			return false;

		$.weeboxs.close();

		var readyFun = function(weebox){
			FANWE.ATME_HTML = weebox.dc.html();
			$("#ATME_BOX #atme_content").val("@"+obj.getAttribute("toname")+":");
		};
		if(FANWE.ATME_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=atme",{boxid:'ATME_BOX',contentType:'ajax',draggable:false,showButton:false,width:480,onready:readyFun,title:"有什么想对她说的？"});
		else
			$.weeboxs.open(FANWE.ATME_HTML,{boxid:'ATME_BOX',contentType:'text',draggable:false,showButton:false,width:480,onready:readyFun,title:"有什么想对她说的？"});
	}

	//提交@她
	$.AtMe_Share_Save = function(obj)
	{
		var form = $(obj).parents("form");
		var formobj = form.get(0);
		if($.trim(formobj.content.value) == '')
		{
			alert(LANG.relay_content_require);
			return;
		}

		$.Show_Btn_Loading(obj);
		var query = form.serialize();
		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=save",
			data:query,
			type: "POST",
			dataType: "json",
			success: function(result){
				if(result.status == 1)
				{
					formobj.reset();
					$.weeboxs.close();
				}
				else
					alert(result.error);

				$.Remove_Btn_Loading(obj);
			},
			error:function(){
				$.Remove_Btn_Loading(obj);
			}
		});
		return false;
	}
	/*=====================@她 END  =====================*/

	/*=====================分享转发BEGIN=====================*/
	//显示分享转发
	$.Relay_Share = function(id)
	{
		if(!$.Check_Login())
			return false;

		$.weeboxs.close();
		$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=relay&id="+id, {boxid:'RELAY_BOX',contentType:'ajax',draggable:false,showButton:false,title:LANG.relay_share,width:480,isFull:true});
	}

	//提交分享转发
	$.Add_Share_Relay = function(obj)
	{
		var form = $(obj).parents("form");
		var formobj = form.get(0);
		if($.trim(formobj.content.value) == '')
		{
			alert(LANG.relay_content_require);
			return;
		}

		$.Show_Btn_Loading(obj);
		var query = form.serialize();
		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=addrelay",
			data:query,
			type: "POST",
			dataType: "json",
			success: function(result){
				if(result.status == 1)
				{
					formobj.reset();
					$.weeboxs.close();
				}
				else
					alert(result.error);

				$.Remove_Btn_Loading(obj);
			},
			error:function(){
				$.Remove_Btn_Loading(obj);
			}
		});
		return false;
	}
	/*=====================分享转发END  =====================*/

	/*=====================喜欢分享BEGIN=====================*/
	//喜欢分享
	$.Fav_Share = function(share_id,obj,size,parentKey)
	{
		if(!$.Check_Login())
			return false;

		var query = new Object();
		query.id = share_id;
		query.size = size;

		var parent;
		if(parentKey == null)
			parent = $(obj).parent();
		else
			parent = $(parentKey);

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=fav",
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				$.Close_Fav_Box();
				var mg = '<div class="fav_fanwe" id="fav_fanwe"></div>';
				$("body").append(mg);
				var left = $(obj).offset().left;
				var top = $(obj).offset().top;

				$("#fav_fanwe").css({"opacity":0,"left":left,"top":top-10});
				$("#fav_fanwe").animate({top:top-25,opacity:1},"fast",'swing',function(){
					if(result.status == 2)
						var box = "<div class='fav_tip' id='fav_tip'><div class='ffail'><span>"+ LANG.fav_share_yi +"</span><a onclick='$.Remove_Fav_Share("+share_id+",this,\""+ parentKey +"\");' href='javascript:;'>"+ LANG.remove +"</a></div></div>";
					if(result.status == 3)
						var box = "<div class='fav_tip' id='fav_tip'><div class='ffail'>"+ LANG.zhiji +"</div></div>";
					if(result.status == 4)
					{
						var box = "<div class='fav_tip' id='fav_tip'><div class='fok'><a onclick='$.Pop_Share_Comment("+share_id+");' href='javascript:;'>"+ LANG.fav_comment +"</a></div></div>";
						$(".SHARE_FAV_COUNT",parent).html("("+result.count+")");
						if(result.count > 0)
							$(".SHARE_FAV_BOX",parent).show();
						else
							$(".SHARE_FAV_BOX",parent).hide();
						$(".SHARE_FAV_LIST",parent).html(result.collects);
					}
					$("body").append(box);
					$("#fav_tip").css({"left":left-30,"top":top-90}).fadeIn();
					$("#fav_fanwe").hover(function(){
						clearTimeout(FANWE.Fav_Timer);
					},function(){
						var fun = function(){
							$.Close_Fav_Box();
						};
						FANWE.Fav_Timer = setTimeout(fun,3000);
					});

					$("#fav_tip").hover(function(){
						clearTimeout(FANWE.Fav_Timer);
					},function(){
						var fun = function(){
							$.Close_Fav_Box();
						};
						FANWE.Fav_Timer = setTimeout(fun,3000);
					});
				});
			}
		});
	}

	$.Remove_Fav_Share = function(share_id,obj,parentKey)
	{
		if(!$.Check_Login())
			return false;

		var query = new Object();
		query.id = share_id;

		var parent;
		if(parentKey == null)
			parent = $(obj).parent();
		else
			parent = $(parentKey);

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=removefav",
			type: "POST",
			cache:false,
			data:query,
			dataType: "json",
			success: function(result){
				if(result.status == 1)
				{
					if(result.count > 0)
						$(".SHARE_FAV_BOX",parent).show();
					else
						$(".SHARE_FAV_BOX",parent).hide();
					$(".SHARE_FAV_COUNT",parent).html("("+result.count+")");
					$(".SHARE_FAV_LIST",parent).html(result.collects);
					$.Close_Fav_Box();
				}
			}
		});
	}

	$.Close_Fav_Box = function()
	{
		clearTimeout(FANWE.Fav_Timer);
		$("#fav_fanwe").remove();
		$("#fav_tip").remove();
	}
	/*=====================喜欢分享END  =====================*/

	/*=====================评论分享BEGIN=====================*/
	$.Pop_Share_Comment = function(share_id)
	{
		$.Close_Fav_Box();
		$.weeboxs.close();

		if(!$.Check_Login())
			return false;

		$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=comment&id="+share_id, {boxid:'COMMENT_BOX',contentType:'ajax',draggable:false,showButton:false,title:LANG.comment_share,width:480});
	}

	$.Add_Share_Comment = function(obj,parentID)
	{
		if(!$.Check_Login())
			return false;

		var form = $(obj).parents("form");
		var formobj = form.get(0);

		if($.trim(formobj.content.value)=='')
		{
			alert(LANG.comment_content_require);
			formobj.content.focus();
			return false;
		}

		var query = form.serialize();

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=addcomment",
			type: "POST",
			cache:false,
			data:query,
			dataType: "json",
			success: function(result){
				if(result.status == 1)
				{
					formobj.reset();
					if($(parentID).length > 0)
					{
						var item = $(result.html).css({"display":"none"});
						$(parentID).prepend(item);
						item.slideDown("slow");
					}
					$.weeboxs.close();
				}
				else
				{
					alert(result.error);
				}
			}
		});
	}

	$.Get_Share_Comment = function(share_id,page,boxID,fun)
	{
		var query = new Object();
		query.page = page;
		query.share_id = share_id;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=comments",
			type: "POST",
			cache:false,
			data:query,
			dataType: "html",
			success: function(html){
				$(boxID).html(html);
				if(fun != null)
					fun.call(this);
			}
		});
	}

	$.Get_Share_Comment_List = function(obj)
	{
		var parent = $(obj).parent();
		var cmtList = parent.siblings('.SHARE_COMMENT_LIST_BOX');
		if(cmtList.length > 0)
		{
			cmtList.remove();
			return false;
		}

		var shareID = $(obj).attr('shareID');
		var query = new Object();
		query.id = shareID;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=listcomment",
			data:query,
			cache:false,
			type: "POST",
			success: function(html){
				parent.after(html);
				parent.siblings('.SHARE_COMMENT_LIST_BOX').show();
				$.Pub_Count_Bind($(".SHARE_COMMENT_LIST_BOX .PUB_TXT").get(0));
			}
		});
	}

	$.Reply_Comment = function(obj)
	{
		if(!$.Check_Login())
			return false;

		var userName = $(obj).attr('uname');
		var cid = $(obj).attr('cid');
		var form = $(obj).parents("form").get(0);
		form.content.value = "//@"+ userName +":" + form.content.value;
		form.parent_id.value = cid;
	}
	/*=====================评论分享END  =====================*/

	/*=====================分享标签BEGIN=====================*/
	$.ShareTagEdit = function(share_id,obj)
    {
        var parent = $(obj).parents("#SHARE_TAGS_"+share_id);
        $('.SHARE_TAG_EDIT_BOX',parent).show();
        $('.SHARE_TAG_SHOW_LIST',parent).hide();
    }

    $.ShareTagClose = function(share_id,obj)
    {
		$.Remove_Btn_Loading(obj);
        var parent = $(obj).parents("#SHARE_TAGS_"+share_id);
        $('.SHARE_TAG_EDIT_BOX',parent).hide();
        $('.SHARE_TAG_SHOW_LIST',parent).show();
    }

    $.ShareTagSave = function(share_id,obj)
    {
        var parent = $(obj).parents("#SHARE_TAGS_"+share_id);
        var tags = $.trim($('.SHARE_TAG',parent).val());
        var query = new Object();
		query.share_id = share_id;
        query.tags = tags;
		var btnTxt = $(obj).html();
		$(obj).html('');
		$.Show_Btn_Loading(obj);

		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=savetag",
			type: "POST",
			cache:false,
			data:query,
			dataType: "json",
			success: function(result){
				if(result.status == 1)
				{
					$('.SHARE_TAG',parent).val(result.tags);
					$('.SHARE_TAG_LIST',parent).html(result.html);
					$('.SHARE_TAG_EDIT_BOX',parent).hide();
					$('.SHARE_TAG_SHOW_LIST',parent).show();
				}
				else
				{
					alert(result.error);
				}
				$(obj).html(btnTxt);
				$.Remove_Btn_Loading(obj);
			}
		});
    }
	/*=====================分享标签END  =====================*/

	/*=====================主题BEGIN=====================*/
	$.Topic_Post_Save = function(obj)
	{
		if(!$.Check_Login())
			return false;

        var form = $(obj).parents("form").get(0);
		var module = $.trim(form.module.value);
		var action = $.trim(form.action.value);
		var url = SITE_PATH + 'services/service.php?m=' + module + '&a=' + action;
		var content = $.trim(form.content.value);
		if(content == '')
		{
			alert(LANG.post_content_require);
			return;
		}

		$.Pub_Img_Sort(form);
		var butTxt = $(obj).val();

		$(obj).val('').addClass('pub_loading').attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:$(form).serialize(),
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).val(butTxt).removeClass('pub_loading').attr("disabled",false);
				if(result.status == 1)
				{
					$.Pub_Share_Reset(form);
					var share_item = $(result.html).css({"display":"none"});
					$("#SHARE_DETAIL_LiST").prepend(share_item);
					share_item.slideDown("slow");
				}
				else
				{
					if(result.error_msg)
						alert(result.error_msg);
					else
						alert(LANG.pub_post_tip1);
				}
			},
			error:function(){
				$(obj).val(butTxt).removeClass('pub_loading').attr("disabled",false);
				alert(LANG.pub_post_tip1);
			}
		});
    };
	/*=====================主题END  =====================*/

	/*=====================评论BEGIN=====================*/
	//删除评论
	$.Delete_Comment = function(comment_id,obj)
    {
        var query = new Object();
		query.comment_id = comment_id;

		$.ajax({
			url: SITE_PATH+"manage/manage.php?m=share&a=delcomment",
			type: "POST",
			cache:false,
			data:query,
			dataType: "json",
			success: function(result){
				if(result.status == 1)
					$("#COMMENT_" + comment_id).slideUp('slow');
			}
		});
    }


	/*=====================评论END  =====================*/
	
	/*=====================专辑BEGIN=====================*/
	//保存专辑
	$.Save_Album = function(obj,func)
    {
		var parent = $(obj).parent();
        var query = new Object();
		query.cid = $(".album_cid",parent).val();
		query.title = $.trim($(".album_name",parent).val());
		if(query.title == '' || query.title == LANG.new_album_name)
			return;
		
		$.get(SITE_PATH+"services/service.php?m=album&a=checktitle",{title:query.title},function(data){
			if(data){
				$.Show_MiNiTooltip($('.album_name',parent),"ALBUM_NAME_TIP",data);
				return false;
			}else{
				$.ajax({
					url: SITE_PATH+"services/service.php?m=share&a=savealbum",
					type: "POST",
					cache:false,
					data:query,
					dataType: "json",
					success: function(result){
						if(result.status == 1)
						{
							if(func != null)
								func.call(this,result);
						}
						else
							$.Show_MiNiTooltip($('.album_name',parent),"ALBUM_NAME_TIP",result.msg);
					}
				});
				return true;
			}
		})
    }
	
	$.Get_Album_Page = function(aid,page,size,func)
	{
		if(!$.Check_Login())
			return false;
		
		var query = new Object();
		query.aid = aid;
		query.page = page;
		query.size = size;
	
		$.ajax({
			url: SITE_PATH+"services/service.php?m=share&a=getalbumpage",
			type: "POST",
			data:query,
			dataType: "json",
			success: function(result)
			{
				if(func != null)
					func.call(this,result);
			}
		});
	}
	
	$.Show_Rel_Album = function(id,type)
    {
		if(!$.Check_Login())
			return false;
			
		FANWE.ALBUM_PAGE = 1;
		FANWE.ALBUM_SELECT_ID = 0;
		FANWE.ALBUM_MAX_PAGE = 2;
		var readyFun = function(weebox)
		{
			$(weebox.dc).delegate(".album_ul li",'mouseover',function(){
				$(this).addClass('checked');
			}).delegate(".album_ul li",'mouseout',function(){
				$(this).removeClass('checked');
			}).delegate(".album_ul li",'click',function(){
				FANWE.ALBUM_SELECT_ID = this.getAttribute("album");
				$(".PUB_ALBUM_ID",weebox.dc).val(FANWE.ALBUM_SELECT_ID);
				$("input",this).attr('checked',true);
			});
			
			FANWE.ALBUM_MAX_PAGE = parseInt($(".albumMaxPage",weebox.dc).val());
			var func = function(result)
			{
				FANWE.ALBUM_MAX_PAGE = result.pager.page_count;
				FANWE.ALBUM_PAGE = result.pager.page;
				$(".album_ul",weebox.dc).html(result.html);
				$(".cu_page",weebox.dc).html(result.pager.page);
				$(".all_page",weebox.dc).html(result.pager.page_count);
			}
			
			FANWE.CREATE_ALBUM_FUN = function(result)
			{
				FANWE.ALBUM_SELECT_ID = result.aid;
				FANWE.ALBUM_PAGE = 1;
				$.Get_Album_Page(FANWE.ALBUM_SELECT_ID,FANWE.ALBUM_PAGE,6,func);
				$(".create_small",weebox.dc).show();
				$(".create_new",weebox.dc).hide();
				$(".PUB_ALBUM_ID",weebox.dc).val(result.aid);
			}

			$(".page_slide .left",weebox.dc).unbind();
			$(".page_slide .left",weebox.dc).bind('click',function(){
				if(FANWE.ALBUM_PAGE > 1)
				{
					FANWE.ALBUM_PAGE--;
					$.Get_Album_Page(FANWE.ALBUM_SELECT_ID,FANWE.ALBUM_PAGE,6,func);
				}
			});
			
			$(".page_slide .right",weebox.dc).unbind();
			$(".page_slide .right",weebox.dc).bind('click',function(){
				if(FANWE.ALBUM_PAGE < FANWE.ALBUM_MAX_PAGE)
				{
					FANWE.ALBUM_PAGE++;
					$.Get_Album_Page(FANWE.ALBUM_SELECT_ID,FANWE.ALBUM_PAGE,6,func);
				}
			});
			
			$(".create_small",weebox.dc).bind('click',function(){
				$(this).hide();
				$(".create_new",weebox.dc).show();
			});
			
			$(".album_name",weebox.dc).bind('focus',function(){
				var old = this.getAttribute("albumName");
				if(this.value == old)
				{
					this.value = '';
					$(this).css('color',"#000");
				}
			}).bind('blur',function(){
				var old = this.getAttribute("albumName");
				if(this.value == old || this.value == '')
				{
					this.value = old;
					$(this).css('color',"#ccc");
				}
			});
			
			var isTextHeight = false;
			$(".album_text",weebox.dc).bind('focus',function(){
				var old = this.getAttribute("default");
				if(this.value == old)
					this.value = '';
				$(this).css({"color":"#000","height":70});
				if(!isTextHeight)
				{
					weebox.dc.height(weebox.dc.height() + 50);
					isTextHeight = true;
				}
			}).bind('blur',function(){
				var old = this.getAttribute("default");
				if(this.value == old || this.value == '')
				{
					this.value = old;
					$(this).css('color',"#ccc");
				}
			});
		};
			
		$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=relalbum&id="+id+"&type="+type,{boxid:'REL_ALBUM_BOX',contentType:'ajax',draggable:false,modal:true,showButton:false,showHeader:false,width:496,onready:readyFun});
		
    }
	
	$.Save_Rel_Album = function(obj)
	{
		if(!$.Check_Login())
			return false;
		
		var form = $(obj).parents("form").get(0);
		if(parseInt(form.albumid.value) == 0)
		{
			alert(LANG.add_rel_album_err1);	
			return false;
		}
		
		var url = SITE_PATH + 'services/service.php?m=share&a=saverelalbum';
		$(obj).hide();
		$('.sub_loading',form).show();
		
		$.ajax({
			url: url,
			type: "POST",
			data:$(form).serialize(),
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).show();
				$('.sub_loading',form).hide();
				
				if(result.status == 1)
				{
					$.Show_Tooltip(LANG.add_rel_album_ok);
				}
				else
				{
					if(result.error_msg)
						alert(result.error_msg);
					else
						alert(LANG.add_rel_album_err);
				}
			},
			error:function(){
				$(obj).show();
				$('.sub_loading',form).hide();
				alert(LANG.add_rel_album_err);
			}
		});
	}
	
	$.Remove_Album = function(aid,obj,rurl)
	{
		if(!$.Check_Login())
			return false;
		
		var query = new Object();
		query.aid = aid;
		var url = SITE_PATH + 'services/service.php?m=album&a=remove';
		$(obj).attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				var fun = function()
				{
					location.href = rurl;
				}
				setTimeout(fun,1);
			},
			error:function(){
				$(obj).attr("disabled",false);
			}
		});
	}
	
	$.Best_Album = function(aid,func)
	{
		if(!$.Check_Login())
			return false;
		
		var readyFun = function(weebox)
		{
			FANWE.ALBUM_BEST_FUNC = func;
			$.Pub_Count_Bind($("#best_form_content").get(0));
		}
		
		$.weeboxs.open(SITE_PATH+"services/service.php?m=album&a=getbest&id="+aid,{boxid:'BEST_ALBUM_BOX',contentType:'ajax',draggable:false,modal:true,showButton:false,showHeader:false,width:496,onready:readyFun});
	}
	
	$.Remove_Best_Album =function(aid,obj,func)
	{
		var query = new Object();
		query.aid = aid;
		
		FANWE.ALBUM_BEST_FUNC = func;
		
		var url = SITE_PATH + 'services/service.php?m=album&a=removebest';
		$(obj).attr("disabled",true);
		$.ajax({
			url: url,
			type: "POST",
			data:query,
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).attr("disabled",true);
				if(result.status != -1)
				{
					if(FANWE.ALBUM_BEST_FUNC != null)
						FANWE.ALBUM_BEST_FUNC.call(this,result);
				}
			},
			error:function(){
				$(obj).attr("disabled",false);
			}
		});
	}
	
	$.Save_Best_Album = function(obj)
	{
		if(!$.Check_Login())
			return false;
		
		var form = $(obj).parents("form").get(0);
		if($.trim(form.content.value) == '')
		{
			alert(LANG.relay_content_require);
			return;
		}
		
		var url = SITE_PATH + 'services/service.php?m=album&a=addbest';
		$(obj).hide();
		$('.sub_loading',form).show();
		$.ajax({
			url: url,
			type: "POST",
			data:$(form).serialize(),
			cache:false,
			dataType: "json",
			success:function(result){
				$(obj).attr("disabled",true);
				if(result.status != -1)
				{
					if(FANWE.ALBUM_BEST_FUNC != null)
						FANWE.ALBUM_BEST_FUNC.call(this,result);
					$.Show_Tooltip(LANG.best_album_ok);
				}
				else
				{
					alert(result.msg_error);
				}
			},
			error:function(){
				$(obj).show();
				$('.sub_loading',form).hide();
			}
		});
	}
	/*=====================专辑END  =====================*/
	
	//显示按钮loading
	$.Show_Btn_Loading = function(obj,right)
	{
		$(obj).attr("disabled",true);
		var html = '<img class="btn_loading_fanwe" src="'+ TPL_PATH +'images/btn_loading.gif" width="20" height="20" />';
		var width = $(obj).width();
		var height = $(obj).height();
		var top,left;
		
		if(right)
		{
			left = $(obj).offset().left + width + 10;
			top = $(obj).offset().top + (height - 22) / 2;
		}
		else
		{
			left = $(obj).offset().left + (width - 20) / 2;
			top = $(obj).offset().top + (height - 20) / 2;
		}
			
		var zindex = 10000;
		$("body").append(html);
		if(right)
			$('.btn_loading_fanwe').css({"position":"absolute","left":left,"top":top,"z-index":zindex,"border":"solid 1px #333"});
		else
			$('.btn_loading_fanwe').css({"position":"absolute","left":left,"top":top,"z-index":zindex});
	}

	//删除按钮loading
	$.Remove_Btn_Loading = function(obj)
	{
		$(obj).attr("disabled",false);
		$('.btn_loading_fanwe').remove();
	}

	//字数统计
	$.Recount_Word = function(obj)
	{
		var form = obj.form;
		if(obj.getAttribute('length') == undefined)
			return false;

		var maxLength = obj.getAttribute('length');
		var isCN = parseInt(obj.getAttribute('isCN'));
		
		var cnt = $(obj).val();
		var length;
		if(isCN == 1)
		{
			maxLength = maxLength * 2;
			length = $.getStringLength(cnt);
			if(length > maxLength)
			{
				cnt = $.getLengthString(cnt,maxLength,true)
				$(obj).val(cnt);
				$(".WORD_COUNT",form).html(0);
			}
			else
			{
				var less = parseInt((maxLength - length) / 2);
				$(".WORD_COUNT",form).html(less);
			}
		}
		else
		{
			length = cnt.length;
			if(length > maxLength)
			{
				cnt = cnt.substr(0,maxLength);
				$(obj).val(cnt);
				$(".WORD_COUNT",form).html(0);
			}
			else
			{
				var less = maxLength - length;
				$(".WORD_COUNT",form).html(less);
			}
		}
	}

	//分享发布输入框绑定
	$.Pub_Count_Bind = function(obj)
	{
		var txt = $(obj);
		txt.attr({"position":txt.val().length});

		txt.bind('click', function(){
			txt.attr({"position":$(this).getPosition()});
		});

		txt.bind('keyup', function(){
			txt.attr({"position":$(this).getPosition()});
			if(this.getAttribute("cut") != 'false')
				$.Recount_Word(this);
		});

		if(txt.length > 0)
			$.Recount_Word(obj);
	}

	//获取光标位置
	$.fn.getPosition = function(){
		var s,e,range,stored_range;
		if(this[0].selectionStart == undefined)
		{
			var selection=document.selection;
			if (this[0].tagName.toLowerCase() != "textarea")
			{
				var val = this.val();
				range = selection.createRange().duplicate();
				range.moveEnd("character", val.length);
				s = (range.text == "" ? val.length:val.lastIndexOf(range.text));
				range = selection.createRange().duplicate();
				range.moveStart("character", -val.length);
				e = range.text.length;
			}
			else
			{
				range = selection.createRange(),
				stored_range = range.duplicate();
				stored_range.moveToElementText(this[0]);
				stored_range.setEndPoint('EndToEnd', range);
				s = stored_range.text.length - range.text.length;
				e = s + range.text.length;
			}
		}
		else
		{
			s=this[0].selectionStart,
			e=this[0].selectionEnd;
		}
		var te=this[0].value.substring(s,e);
		return s;
	};

	//前台权限
	$.GetManageMenu = function(module,id,obj,event,fun)
	{
		$("#MANAGE_MENU_BOX").hide();
		$.ajax({ 
			url: SITE_PATH+"manage/manage.php?m=common&a=menu",
			type: "POST",
			cache:false,
			data:{"id":id,"module":module},
			dataType: "html",
			success: function(html){
				FANWE.MANAGE_OBJ = obj;
				if(fun != null)
					fun.call(this,obj,result);
				else
				{
					if($('#MANAGE_MENU_BOX').length == 0)
						$("body").append('<div id="MANAGE_MENU_BOX"></div>');
					$("#MANAGE_MENU_BOX").html(html);
					$("#MANAGE_MENU_BOX").show();
					var offset = $(obj).offset();
					var my = offset.top - 10 + $(obj).height();
					var mx = offset.left + 10;
					$("#MANAGE_MENU_BOX").css({"top":my,"left":mx});
					$("body").one("click",function(event){
						if(!$.getClickIsElement($("#MANAGE_MENU_BOX"),event) && !$.getClickIsElement($(obj),event))
							$("#MANAGE_MENU_BOX").hide();
					});
				}
			}
		});
	}
	
	$.UnManageLock = function(module,id,obj)
	{
		$.ajax({ 
			url: SITE_PATH+"manage/manage.php?m=common&a=unlock",
			type: "POST",
			cache:false,
			data:{"id":id,"module":module},
			success: function(){
				$(obj).hide();
				window.opener=null;
             	window.open('','_self');
             	window.close();
			}
		});
	}
	
	$.ManageHandler = function(module,action,id,obj,fun)
	{
		if(module == 'dapei')
			module = 'share';

		$.ajax({ 
			url: SITE_PATH+"manage/manage.php?m="+ module +"&a=" + action,
			type: "POST",
			cache:false,
			data:{"id":id},
			dataType: "json",
			success: function(result){
				$("#MANAGE_MENU_BOX").hide();

				if(fun != null)
					fun.call(this,obj,result);
				else
				{
					if(result.status == 1)
					{
						if(action == "delete" && FANWE.MANAGE_OBJ != null)
						{
							$(FANWE.MANAGE_OBJ).addClass('disabled').attr({"disabled":true});
							$("*",FANWE.MANAGE_OBJ).attr({"disabled":true});
						}

						if(result.msg && result.msg != '')
							alert(result.msg);
					}
				}
			}
		});
	}
	
	//获取商品评论
	$.Get_Goods_Comment = function(id,page,boxID,fun)
	{
		var query = new Object();
		query.page = page;
		query.id = id;

		$.ajax({
			url: SITE_PATH+"services/service.php?m=goods&a=comments",
			type: "POST",
			cache:false,
			data:query,
			dataType: "html",
			success: function(html){
				$(boxID).html(html);
				if(fun != null)
					fun.call(this);
			}
		});
	}
	
	$.ScaleImage = function(obj,src,scaleType,scaleWidth,scaleHeight)
	{
		var parent = $(obj).parent();
		var img= new Image();		
		img.src = src;
		
		if(isNaN(scaleType) || isNaN(scaleWidth) || isNaN(scaleHeight) || scaleType < 1 || (scaleWidth < 1 && scaleHeight < 1))
		{
			obj.src = src;
			delete img;
			return;
		}
		
		var autoScale = function(){
			var width = 0;
			var height = 0;
			var scale = img.width / img.height;

			if(img.width == 0 || img.height == 0)
			{
				delete img;
				return;
			}

			switch(scaleType)
			{
				case 1:
					if(img.width > scaleWidth)
					{
						width = scaleWidth;
						height = scaleWidth / scale;
					}
					else
					{
						scale = scaleWidth / img.width;
						width = scaleWidth;
						height = img.height * scale;
					}
				break;

				case 2:
					if(img.height > scaleHeight)
					{
						height = scaleHeight;
						width = scaleHeight * scale;
					}
					else
					{
						scale = scaleHeight / img.height;
						height = scaleHeight;
						width = img.width * scale;
					}
				break;

				case 3:
					if(scaleWidth/img.width < scaleHeight/img.height)
					{
						scale = scaleHeight / img.height;
						height = scaleHeight;
						width = img.width * scale;
					}
					else
					{
						scale = scaleWidth / img.width;
						width = scaleWidth;
						height = img.height * scale;
					}
				break;
				
				case 4:
					if(scaleWidth/img.width > scaleHeight/img.height)
					{
						scale = scaleHeight / img.height;
						height = scaleHeight;
						width = img.width * scale;
					}
					else
					{
						scale = scaleWidth / img.width;
						width = scaleWidth;
						height = img.height * scale;
					}
				break;

				default:
					delete img;
					return;
				break;
			}
			
			obj.width = width;
			obj.height = height;
			obj.src = img.src;
			if(scaleType == 3)
			{
				var left = (parent.width() - width) / 2;
				var top = (parent.height() - height) / 2;
				$(obj).css({"margin-top":top,"margin-left":left});
			}
			else
			{
				if($(obj).attr("updateParentSize") == "1")
					$(obj).parent().css({"width":width,"height":height});
			}
			
			delete img;
		};

		if(img.complete){
			autoScale();
			return;
		}

		$(img).load(function(){
			autoScale();
			return;
		});
	}
	
	$.Show_MiNiTooltip = function(obj,id,msg,isCookie,lc,parent,autoClose){
		var autoClose=autoClose==null?1:0;
		if(isCookie && $.cookie('MINITOOLTIP_CLOSE_'+id) == 1)
		{
			$.cookie('MINITOOLTIP_CLOSE_'+id,1,{expires:7});
			return;
		}
		var TIME_OUT_HANDLER;
		if($("#"+id).length == 0)
		{
			var html = '<div class="tooltip_box" id="'+id+'" style="display:none;"><div class=tbc'+(autoClose?' style="padding-right:0;"':'')+'><div class="tbm">'+msg+'</div>'+(autoClose?'':'<a class="tbclose">关闭</a>')+'</div><div class="tbb"></div></div>';
			if(parent)
				parent.append(html);
			else
				$("body").append(html);
			
			$("#"+id+" .tbclose,#"+id+" a").click(function(){
				$("#"+id).remove();
				if(isCookie)
					$.cookie('MINITOOLTIP_CLOSE_'+id,1,{expires:7});
			});
			
			if(!isCookie)
			{
				var fun = function(){
					$("#"+id).fadeOut("fast",function(){
						$("#"+id).remove();
					});
				};
				if(autoClose)
					TIME_OUT_HANDLER = setTimeout(fun,3000);
			}
		}
		else
		{
			clearTimeout(TIME_OUT_HANDLER);
			$("#"+id).stop();
			$("#"+id).show();
			$("#"+id+" .tbm").html(msg);
		}
		
		var offset = obj.offset();
		var left = offset.left - 31 + obj.width() / 2;
		var top = offset.top - $("#"+id).height() - 1;
		if(lc == 1)
			left = offset.left;
		
		if(parent)
		{
			offset = parent.offset();
			left = left - offset.left;
			top = top - offset.top;
		}

		$("#"+id).css({"left":left,"top":top,"opacity":100,'z-index':new Date().getTime()}).show();
	}
	
	$.Show_TopTip = function(msg,time){
		var id='toptip',time=time==null?3000:time;
		if($("#"+id).length == 0)
		{
			var html = '<div class="toptip_box" id="'+id+'" style="display:none;">'+msg+'</div>';
			$("body").append(html);
		}
		else
		{
			$("#"+id).stop();
			$("#"+id).html(msg);
		}
		var fun = function(){
			$("#"+id).fadeOut('slow');
		};
		setTimeout(fun,time);
		
		var left = $(document).width()/2 - $("#"+id).width()/2;
		$("#"+id).css({"left":left}).fadeIn('slow');
	}
	
	$.Share_Publish_Init=function(form){
		$.Pub_Count_Bind($(".PUB_TXT",form).get(0));
		
		var goodsDetailed;
		var photoDetailed;
		
		var goodsDetailedFun = function(event){
			goodsDetailed = $(".PUB_GOODS_DETAILED",form);
			var target = event.target ? event.target : event.srcElement;
			if($("select",goodsDetailed).get(0) == target)
				return;
			
			if(!$.getClickIsElement(goodsDetailed,event))
			{
				saveGoodsInfo()
				if(goodsDetailed.hasClass("PUB_GOODS_DETAILEDL"))
				{
					goodsDetailed.animate({"width":0},300,"easeOutSine",function(){
						goodsDetailed.hide();
					});
				}
				else
				{
					var position = goodsDetailed.position();
					goodsDetailed.animate({"width":0,"left":position.left + 240},300,"easeOutSine",function(){
						goodsDetailed.hide();
					});
				}
			}
		};
		
		var saveGoodsInfo = function(){
			goodsDetailed = $(".PUB_GOODS_DETAILED",form);
			var info = jQuery.parseJSON(Base64.decode($('.PUB_DETAILED_SELF .GOODS_INFO',form).val()));

			if($('.colorblockok',goodsDetailed).length <= 0){
				$.Show_MiNiTooltip($(".PUB_DETAILED_SELF span",form),"FAST_PUBLISH_GOODS_TAGS_MIN","请选择宝贝颜色",false,1,$(form));
			}
			if(!$('.PGD_GOODSCATE',goodsDetailed).val()){
				$.Show_MiNiTooltip($(".PUB_DETAILED_SELF span",form),"FAST_PUBLISH_GOODS_CATEGORY_MIN","请选择宝贝分类",false,1,$(form));	
			}
			$("body").unbind("click",goodsDetailedFun);
			info.item.goodsalt = $('.PGD_GOODSALT',goodsDetailed).val();
			if($(".colorblockok",goodsDetailed).length > 0)
				info.item.color = $(".colorblockok",goodsDetailed).attr("colorID");
			else
				info.item.color = 0;
			info.item.cid = $(".PGD_GOODSCATE",goodsDetailed).val();
			$('.PUB_DETAILED_SELF .GOODS_INFO',form).val(Base64.encode(JSON.stringify(info)));
			return true;
		}
		
		var photoDetailedFun = function(event){
			photoDetailed = $(".PUB_PHOTO_DETAILED",form);
			if(!$.getClickIsElement(photoDetailed,event))
			{
				if(photoDetailed.hasClass("PUB_PHOTO_DETAILEDL"))
				{
					photoDetailed.animate({"width":0},300,"easeOutSine",function(){
						photoDetailed.hide();
					});
				}
				else
				{
					var position = photoDetailed.position();
					photoDetailed.animate({"width":0,"left":position.left + 240},300,"easeOutSine",function(){
						photoDetailed.hide();
					});
				}
				savePhotoInfo();
			}
		};
		
		var savePhotoInfo = function(){
			photoDetailed = $(".PUB_PHOTO_DETAILED",form);
			$("body").unbind("click",photoDetailedFun);
			var info = jQuery.parseJSON(Base64.decode($('.PUB_DETAILED_SELF .PHOTO_INFO',form).val()));
			info.photoalt = $('.PHD_PHOTOALT',photoDetailed).val();
			$('.PUB_DETAILED_SELF .PHOTO_INFO',form).val(Base64.encode(JSON.stringify(info)));
		}
		
		$(".PUB_IMG li:not(.PUB_LOOK_DAPEI)",form).live('mousedown',function(event){
			var target = event.target ? event.target : event.srcElement;
			if($(".PUB_IMG li",form).length > 1)
			{
				$('.PUB_IMG',form).sortable({items: "li:not(.PUB_LOOK_DAPEI)"});
				$('.PUB_IMG',form).disableSelection();
			}
			
			if($(".del",this).get(0) == target)
				return;
				
			if($("span",this).get(0) != target)
			{
				var type = $(this).attr('type');
				switch(type)
				{
					case "goods":
						saveGoodsInfo();
						$(".PUB_GOODS_DETAILED",form).hide();
					break;
					
					case "photo":
						$(".PUB_PHOTO_DETAILED",form).hide();
						savePhotoInfo();
					break;
				}
			}
		});
		
		$(".PGD_CLOSE",form).live('click',function(){
			saveGoodsInfo();
			$(".PUB_GOODS_DETAILED",form).hide();
			return false;
		});
		
		$(".PHD_CLOSE",form).live('click',function(){
			$(".PUB_PHOTO_DETAILED",form).hide();
			savePhotoInfo();
			return false;
		});
		
		$(".PUB_IMG li span",form).live('click',function(){
			goodsDetailed = $(".PUB_GOODS_DETAILED",form);
			photoDetailed = $(".PUB_PHOTO_DETAILED",form);
			goodsDetailed.stop();
			goodsDetailed.hide();
			photoDetailed.stop();
			photoDetailed.hide();
			
			var thisobj = $(this).parent();
			$(".PUB_IMG li",form).removeClass("PUB_DETAILED_SELF");
			thisobj.addClass("PUB_DETAILED_SELF");
			
			var position = thisobj.position();
			var marginTop = parseInt(thisobj.css("margin-top"));
			if(isNaN(marginTop))
				marginTop = 0;
			
			var type = thisobj.attr('type');
			var index = $(".PUB_IMG li",form).index(thisobj);
			
			var goodsFun = function(){
				var info = jQuery.parseJSON(Base64.decode($('.GOODS_INFO',thisobj).val()));
				$(".PGD_PRICE",goodsDetailed).html("¥" + info.item.price);
				$(".PGD_COMMISSION",goodsDetailed).hide();
				if(info.item.goodsalt)
					$(".PGD_GOODSALT",goodsDetailed).val(info.item.goodsalt);
				else
					$(".PGD_GOODSALT",goodsDetailed).val("");
				
				$(".colorblock",goodsDetailed).removeClass('colorblockok');
				if(info.item.color && info.item.color > 0)
				{
					$(".colorblock[colorID='"+info.item.color+"']",goodsDetailed).addClass('colorblockok');
				}
				
//				if(info.item.user_commission)
//				{
//					$(".PGD_COMMISSION",goodsDetailed).show();
//					$("span.PGD_COMMISSION",goodsDetailed).html("¥" + info.item.user_commission);
//				}
				
				if(info.item.cid > 0)
				{
					var goodsCate = $(".PGD_GOODSCATE",goodsDetailed);
					var goodscateoption = $("option[value='"+ info.item.cid +"']",goodsCate);
					$(".PGD_GOODSCATESTR",goodsDetailed).show().html(goodscateoption.attr('cateName'));
					goodsCate.get(0).selectedIndex = $("option",goodsCate).index(goodscateoption);
					goodsCate.hide();
				}
				else
				{
					$(".PGD_GOODSCATE",goodsDetailed).get(0).selectedIndex = 0;
					$(".PGD_GOODSCATE",goodsDetailed).show();
					$(".PGD_GOODSCATESTR",goodsDetailed).hide();
				}
				
				if(index % 6 < 3)
				{
					goodsDetailed.removeClass("PUB_GOODS_DETAILEDR").addClass("PUB_GOODS_DETAILEDL");
					goodsDetailed.css({"top":position.top + marginTop,"left":position.left + 1 + thisobj.width(),"width":0});
					goodsDetailed.show();
					goodsDetailed.animate({"width":240},300,"easeInSine");
				}
				else
				{
					goodsDetailed.removeClass("PUB_GOODS_DETAILEDL").addClass("PUB_GOODS_DETAILEDR");
					goodsDetailed.css({"top":position.top + marginTop,"left":position.left - 13,"width":0});
					goodsDetailed.show();
					goodsDetailed.animate({"width":240,"left":position.left - 253},300,"easeInSine");
				}
				$("body").bind("click",goodsDetailedFun);
				return false;
			};
			
			var photoFun = function(){
				var info = jQuery.parseJSON(Base64.decode($('.PHOTO_INFO',thisobj).val()));
				if(info.photoalt)
					$(".PHD_PHOTOALT",photoDetailed).val(info.photoalt);
				else
					$(".PHD_PHOTOALT",photoDetailed).val("");
					
				if(index % 6 < 3)
				{
					photoDetailed.removeClass("PUB_PHOTO_DETAILEDR").addClass("PUB_PHOTO_DETAILEDL");
					photoDetailed.css({"top":position.top + marginTop,"left":position.left + 1 + thisobj.width(),"width":0});
					photoDetailed.show();
					photoDetailed.animate({"width":240},300,"easeInSine");
				}
				else
				{
					photoDetailed.removeClass("PUB_PHOTO_DETAILEDL").addClass("PUB_PHOTO_DETAILEDR");
					photoDetailed.css({"top":position.top + marginTop,"left":position.left - 13,"width":0});
					photoDetailed.show();
					photoDetailed.animate({"width":240,"left":position.left - 253},300,"easeInSine");
				}
				$("body").bind("click",photoDetailedFun);
				return false;
			};
			
			switch(type)
			{
				case "goods":
					goodsFun();
				break;
				
				case "photo":
					photoFun();
				break;
			}
			
			return false;
		});
		
		$(".PUB_GOODS_DETAILED .colorblock",form).live('click',function(){
			$(this).siblings().removeClass('colorblockok');
			$(this).toggleClass('colorblockok');
		});
	}
	
	$.Share_Album_Init=function(form,selectbox,albumbox){
		var ALBUM_MAX_PAGE = 2;
		var ALBUM_PAGE = 1;
		var ALBUM_IS_LOADING = false;
		var ALBUM_SELECT_ID = 0;
		var ALBUM_LI_MOUSE = false;
		
		var checkPageClickByAlbum = function(event){
			var target = event.target ? event.target : event.srcElement;
			if($.isParent(target,$("select",albumbox).get(0)))
				return;
			
			if(!$.getClickIsElement(albumbox,event))
			{
				albumbox.hide();
				$("body").unbind('click',checkPageClickByAlbum);
			}
		}
		
		var publishSaveAlbumHadnler = function(result){
			$(".chose_album .choose",selectbox).html(result.title);
			ALBUM_SELECT_ID = result.aid;
			ALBUM_PAGE = 1;
			$(".chose_album .cancel",selectbox).show();
			$(".PUB_ALBUM_ID",form).val(ALBUM_SELECT_ID);
			$("body").unbind('click',checkPageClickByAlbum);
			albumbox.hide();
		}
		
		var publishGetAlbumPageHadnler = function(result){
			ALBUM_MAX_PAGE = result.pager.page_count;
			ALBUM_PAGE = result.pager.page;
			$(".album_ul",albumbox).html(result.html);
			$(".cu_page",albumbox).html(result.pager.page);
			$(".all_page",albumbox).html(result.pager.page_count);
		}
		
		var getAlbumList = function(){
			var query = new Object();
			query.aid = ALBUM_SELECT_ID;
			query.page = ALBUM_PAGE;
		
			$.ajax({
				url: SITE_PATH+"services/service.php?m=share&a=selectalbum",
				type: "POST",
				data:query,
				dataType: "json",
				success: function(result){
					ALBUM_MAX_PAGE = result.pager.page_count;
					ALBUM_PAGE = result.pager.page;
					if(result.html.indexOf('aid="'+FANWE.ALBUM_SELECT_ID+'"')==-1)
						result.html=result.html.replace('album_ul">','album_ul">'+FANWE.DEFAULT_ALBUM_LI);
					albumbox.html(result.html);
				}
			});
		}
		
		$(".to_create",albumbox).live('click',function(){
			$.Save_Album(this,publishSaveAlbumHadnler);
		});
		
		$(".chose_album",selectbox).click(function(){
			if(albumbox.css('display') == 'none')
			{
				var offset = $(this).offset();
				var top = offset.top + 30;
				var left = offset.left;
				
				offset = albumbox.parent().offset();
				top = top - offset.top;
				left = left - offset.left;
				
				albumbox.css({"top":top,"left":left}).show();
				getAlbumList();
				ALBUM_IS_LOADING = true;
				$("body").bind('click',checkPageClickByAlbum);
				return false;
			}
			else
			{
				albumbox.hide();
				$("body").unbind('click',checkPageClickByAlbum);
			}
		});
		
		$(".album_name",albumbox).live('focus',function(){
			var old = this.getAttribute("albumName");
			if(this.value == old)
			{
				this.value = '';
				$(this).css('color',"#000");
			}
		}).live('blur',function(){
			var old = this.getAttribute("albumName");
			if(this.value == old || this.value == '')
			{
				this.value = old;
				$(this).css('color',"#ccc");
			}
		});
		
		$(".page_slide .left",albumbox).live('click',function(){
			if(ALBUM_PAGE > 1)
			{
				ALBUM_PAGE--;
				$.Get_Album_Page(ALBUM_SELECT_ID,ALBUM_PAGE,8,publishGetAlbumPageHadnler);
			}
		});
		
		$(".page_slide .right",albumbox).live('click',function(){
			if(ALBUM_PAGE < ALBUM_MAX_PAGE)
			{
				ALBUM_PAGE++;
				$.Get_Album_Page(ALBUM_SELECT_ID,ALBUM_PAGE,8,publishGetAlbumPageHadnler);
			}
		});
		
		$(".album_ul li",albumbox).live('mouseover',function(){
			ALBUM_LI_MOUSE = true;
			$(this).addClass('checked');
		}).live('mouseout',function(){
			ALBUM_LI_MOUSE = false;
			$(this).removeClass('checked');
		}).live('click',function(){
			ALBUM_SELECT_ID = this.getAttribute("album");
			$(".PUB_ALBUM_ID",form).val(ALBUM_SELECT_ID);
			$(".chose_album .cancel",selectbox).show();
			$("input",this).attr('checked',true);
			$(" .chose_album .choose",selectbox).html($(".m_a",this).html());
			albumbox.hide();
			$("body").unbind('click',checkPageClickByAlbum);
		});
		
		$(".chose_album .cancel",selectbox).click(function(){
			ALBUM_SELECT_ID = 0;
			$(".PUB_ALBUM_ID",form).val(0);
			$(".chose_album .choose",selectbox).html("选择杂志社");
			$(this).hide();
			return false;
		});
	}
	
	$.Commission_Format = function(commission,obj){
		commission = Math.floor(commission * USER_BUY_RATE) / 100;
		if(obj)
			$(obj).html($(obj).html() + " ¥"+commission);
		else
			document.write("¥"+commission);
	};
	
	$.Get_Image_Size = function(url,result,error){
		var img= new Image();
		var bln = false;
		img.onload = function(){
			if(bln)
				return;
			
			result.call(this,img.width,img.height);
			img.onload = null;
			img.onerror = null;
			delete img;
		}
		img.onerror = function(){
			if(bln)
				return;
					
			if(error)
				error.call(this);
			img.onload = null;
			img.onerror = null;
			delete img;
		}
		img.src = url;
		if(img.complete){
			bln = true;
			img.onload = null;
			img.onerror = null;
			if(img.width && img.height)
				result.call(this,img.width,img.height);
			else if(error)
				error.call(this);
			delete img;
		}
	};
	
	$.Fast_Qd = function(){
		if(!$.Check_Login())
			return false;
			
		$.get(SITE_PATH+"user.php?action=qd",{},function(data){
			if(data == 1){
				$.Show_TopTip("今天已经签过到啦，记得明天再来");
			}else{
				data = eval('('+data+')');
				//$.Show_TopTip("签到成功  <a href=http://www.bujie.com/topic/detail/7 target=_blank>>>查看更多积分获取方式</a>")
				var html = '<span class="signin"><i></i>已签</span>';
				html += '<div class="dropdown-menu">';
				html += '<dl><dt>连续签到：'+data.times+'天，积分<b>';
				if (data.times == 1){
					html += '+5';
				}
				else if (data.times == 2){
					html += '+10';
				}
				else if (data.times >= 3 && data.times < 10){
					html += '+15';
				}
				else if (data.times >= 10){
					html += '+20';
				}
				html += '</b></br>明天签到可获得<b> ';
				if (parseInt(data.times+1) == 1){
					html += '5';
				}
				else if (parseInt(data.times+1) == 2){
					html += '10';
				}
				else if (parseInt(data.times+1) >= 3 && parseInt(data.times+1) < 10){
					html += '15';
				}
				else if (parseInt(data.times+1) >= 10){
					html += '20';
				}
				html += ' </b>分</dt><dd><p><span>我的积分：</span><a target="_blank" href=""><b>'+data.credits+'</b></a>&nbsp;&nbsp;|&nbsp;<a target="_blank" href="">积分攻略</a></p></dd></dl></div>';
				$("#mall-nav li.sign_panel").html(html);
			}
			//$('.fast_qd').hide('slow');
		})
//		$.get(SITE_URL+"user.php?action=qd",{},function(){},'jsonp')
	}
//	$.Fast_Qd_Jsonp = function(data){
//		if(!data){
//			$.Show_TopTip("签到成功  <a href=/topic/detail/7>>>查看更多积分获取方式</a>")
//		}else{
//			$.Show_TopTip("今天已经签过到啦，记得明天再来");
//		}
//		$('.fast_qd').hide('slow');
//	}
	
	$.Fast_Share = function(lb_tab,album_id,album_name,url){
		if(!$.Check_Login())
			return false;
		$.weeboxs.close();
		
		FANWE.LB_TAB=lb_tab==undefined?0:parseInt(lb_tab); //默认发布的类型是分享
		FANWE.ALBUM_SELECT_ID=album_id==undefined?0:parseInt(album_id); //默认未选中任何杂志社
		FANWE.DEFAULT_ALBUM_TITLE=album_name==undefined?'':album_name; //默认未选中任何杂志社

		if(url){
			$.Fast_Share_Goods(url);
		}else{
			var readyFunLook = function(weebox){
				FANWE.FAST_SHARE_LOOK_HTML = weebox.dc.html();
			};
			var readyFun = function(weebox){
				FANWE.FAST_SHARE_HTML = weebox.dc.html();
			};
			var readyFunPhoto = function(weekbox){
				FANWE.FAST_SHARE_PHOTO_HTML = weekbox.dc.html();			
			};
			
			if (parseInt(FANWE.SHARE_LOOK_IMG_CLASS) > 0){
				if (FANWE.SHARE_LOOK_TYPE == "look"){
					//晒货的配搭只能是图片
					if(FANWE.FAST_SHARE_PHOTO_HTML == null)
						$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastsharephoto",{boxid:'FAST_SHARE_PHOTO_BOX',title:"发布分享",contentType:'ajax',draggable:false,showButton:false,width:496,height:218,onready:readyFunPhoto});
					else
						$.weeboxs.open(FANWE.FAST_SHARE_PHOTO_HTML,{boxid:'FAST_SHARE_PHOTO_BOX',title:"发布分享",contentType:'text',draggable:false,showButton:false,width:496,height:218,onready:readyFunPhoto});
				}
				else {
					if(FANWE.FAST_SHARE_LOOK_HTML == null)
						$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastsharelook",{boxid:'FAST_SHARE_LOOK_BOX',title:"发布分享",contentType:'ajax',draggable:false,showButton:false,width:496,height:218,onready:readyFunLook});
					else
						$.weeboxs.open(FANWE.FAST_SHARE_LOOK_HTML,{boxid:'FAST_SHARE_LOOK_BOX',title:"发布分享",contentType:'text',draggable:false,showButton:false,width:496,height:218,onready:readyFunLook});
				}				
			}
			else {
				if (FANWE.SHARE_LOOK_TYPE == "look"){
					if(FANWE.FAST_SHARE_LOOK_HTML == null)
						$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastsharelook",{boxid:'FAST_SHARE_LOOK_BOX',title:"发布分享",contentType:'ajax',draggable:false,showButton:false,width:496,height:218,onready:readyFunLook});
					else
						$.weeboxs.open(FANWE.FAST_SHARE_LOOK_HTML,{boxid:'FAST_SHARE_LOOK_BOX',title:"发布分享",contentType:'text',draggable:false,showButton:false,width:496,height:218,onready:readyFunLook});
				}
				else {
					if(FANWE.FAST_SHARE_HTML == null)
						$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastshare",{boxid:'FAST_SHARE_BOX',title:"发布分享",contentType:'ajax',draggable:false,showButton:false,width:496,height:218,onready:readyFun});
					else
						$.weeboxs.open(FANWE.FAST_SHARE_HTML,{boxid:'FAST_SHARE_BOX',title:"发布分享",contentType:'text',draggable:false,showButton:false,width:496,height:218,onready:readyFun});
				}				
			}	
		}
	}
	
	$.Fast_Share_Goods = function(url){
		$.weeboxs.close();
		var closeFun = function(){
			$.Goods_Collect_Clear();
		};
		
		var readyFun = function(weebox){
			$('.GOODS_COLLECT',weebox.dc).click(function(){
				$.Goods_Collect(weebox,function(result){
					FANWE.Goods_Collect_Handler.fun = null;
					FANWE.Goods_Collect_Handler.ajax = null;
					FANWE.Goods_Collect_Handler = null;
					$.Goods_Close();
					if(result.status == 1)
					{
						$.Fast_Show_By_Type(result.info,false);
						return false;
					}
					else if(result.status == 0)
					{
						alert(LANG.goods_collect_4);
					}
					else if(result.status == -1)
					{
						alert(LANG.goods_collect_2);
					}
					else if(result.status == -2)
					{
						alert(LANG.goods_collect_3.replace('%d',SETTING.share_goods_count));
					}
					else if(result.status == -3)
					{
						alert(LANG.goods_collect_6);
					}
					else if(result.status == -4)
					{
						alert(LANG.goods_collect_7);
					}
					else if(result.status == -5)
					{
						alert(LANG.goods_collect_8);
					}
					else if(result.status == -6)
					{
						alert(LANG.goods_collect_9);
					}
					return false;
				});
			});
			if(url){
				$('.GOODS_URL',weebox.dc).val(url)
				$('.GOODS_COLLECT',weebox.dc).trigger("click");
			}
		};
		
		if(FANWE.FAST_SHARE_GOODS_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastgoods",{boxid:'FAST_SHARE_GOODS_WEEBOX',title:"分享商品",contentType:'ajax',draggable:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
		else
			$.weeboxs.open(FANWE.FAST_SHARE_GOODS_HTML,{boxid:'FAST_SHARE_GOODS_WEEBOX',title:"分享商品",contentType:'text',draggable:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
	}
	
	$.Fast_Show_By_Type = function(goods,photo){
		$.weeboxs.close();
		var query = new Object();
		if(goods)
		{
			query.type = "goods";
			query.goods = goods;
		}
		else
		{
			query.type = "photo";
			query.photo = photo;
		}
		
		var openFun = function(weebox){
			var form = $("form",weebox.dc).get(0);
			$.Share_Publish_Init($(form));
			
			if(FANWE.ALBUM_SELECT_ID&&FANWE.DEFAULT_ALBUM_TITLE){
				$(".PUB_ALBUM_ID",weebox.dc).val(FANWE.ALBUM_SELECT_ID);
				$(" .chose_album .choose",weebox.dc).html(FANWE.DEFAULT_ALBUM_TITLE);
				$(" .chose_album .cancel",weebox.dc).show();
				FANWE.DEFAULT_ALBUM_LI='<li album="'+FANWE.ALBUM_SELECT_ID+'" class=""><input type="radio" checked="checked" aid="'+FANWE.ALBUM_SELECT_ID+'" class="m_i" name="album_box"><label class="m_a">'+FANWE.DEFAULT_ALBUM_TITLE+'</label></li>';
			}else{
				FANWE.DEFAULT_ALBUM_LI='';
			}
			$.Share_Album_Init($(form),$("#FAST_SELECT_ALBUM"),$("#FAST_ALBUM"));
			
			if (FANWE.SHARE_ID != undefined && FANWE.SHARE_ID != 0){
				if (FANWE.SHARE_LOOK_TYPE == "look"){
					$(".lb_tab li").html("我要晒货");
					$(".SHARE_TYPE").val("look");
				}
				else{
					$(".lb_tab li").html("分享搭配");
					$(".SHARE_TYPE").val("dapei");
				}
				$(".SHARE_ID",form).val(FANWE.SHARE_ID);
				$(".PUB_LOOK_DAPEI_PHOTO").css("display", "none");				
			}
			else {
				var li = '<li class="rt3" rel="look"><a href="/look/share" target="_blank">我要晒货</a></li>';
				li += '<li class="rt3" rel="dapei"><a href="/dapei/share" target="_blank">分享搭配</a></li>';
				$('.lb_tab').append(li);
			}
			if (FANWE.SHARE_LOOK_IMG_CLASS == undefined || FANWE.SHARE_LOOK_IMG_CLASS == ""){
				$(".SHARE_LOOK_IMG_TYPE").val("");
			}
			else if (parseInt(FANWE.SHARE_LOOK_IMG_CLASS) > 0){
				$(".SHARE_LOOK_IMG_TYPE").val("peida"+FANWE.SHARE_LOOK_IMG_CLASS);
			}
			
			//分享、晒货、搭配切换
			/*$(".lb_tab li",weebox.dc).click(function(){
				var thisobj = $(this);
				if(thisobj.hasClass('c'))
					return false;
				
				$(this).siblings().removeClass('c');
				$(this).addClass('c');
				
				$(".PUB_TXT",form).val("");
				$(".PUB_SHARE_TAG",form).val("");
				$(".PUB_SHARE_TAG_BOX ui",form).html("");
				$(".PUB_SHARE_TAG_BOX",form).hide();
				
				$(".tooltip_box").remove();
				$.weeboxs.close();
				var relquery = query;
				if(query.type == "goods")
				{
					goods = jQuery.parseJSON(Base64.decode(goods));
					goods = $(".PUB_IMG li[key='"+ goods.item.key +"'] .GOODS_INFO",$(form)).val();
					relquery.goods = goods;
				}
				else
				{
					photo = $(".FAST_CURRENT_PHOTO .PHOTO_INFO",$(form)).val();
					relquery.photo = photo;
				}
				relquery.rel = thisobj.attr('rel');
				$(".fast_expands",form).addClass('fast_expands_loading').html("");
		
				$.ajax({
					url: SITE_PATH+"services/service.php?m=share&a=fastshow",
					type: "POST",
					data:relquery,
					dataType: "json",
					success: function(result){
						$(".fast_expands",form).removeClass('fast_expands_loading').html(result.html);
						if(query.type == "goods")
							$.Pub_Share_Tags(form);
					}
				});
			});*/
			if(FANWE.LB_TAB)
				$(".lb_tab li",weebox.dc).eq(FANWE.LB_TAB).trigger("click");
			
			if(query.type == "goods")
			{
				if(FANWE.Goods_Collect_Handler)
				{
					FANWE.Goods_Collect_Handler.fun = null;
					FANWE.Goods_Collect_Handler.ajax = null;
					FANWE.Goods_Collect_Handler = null;
				}
		
				var info = jQuery.parseJSON(Base64.decode(goods));
				if(info.item.id == 0 && info.item.type == 'taobao')
				{
					TOP.api('rest','post',{
						method:'taobao.taobaoke.widget.items.convert',
						fields:'click_url,shop_click_url,commission_rate,commission',
						num_iids:info.item.gid
					},function(resp){
						try
						{
							var goods = resp.taobaoke_items.taobaoke_item[0];
							info.item.commission = goods.commission;
							info.item.user_commission = Math.floor(goods.commission * USER_COMMISSION_RATE) / 100;
							info.item.commission_rate = goods.commission_rate;
							info.item.taoke_url = goods.click_url;
							if(info.shop)
								info.shop.taoke_url = goods.shop_click_url;
							$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
//							if(info.item.user_commission > 0)
//							{
//								$(".PUB_GOODS_DETAILED .PGD_COMMISSION",form).show();
//								$(".PUB_GOODS_DETAILED span.PGD_COMMISSION",form).html("¥" + info.item.user_commission);
//							}
						}
						catch(e){};
						
						if($.checkUrl(info.item.img))
						{
							$.Get_Image_Size(info.item.img,function(width,height){
								//info = jQuery.parseJSON(Base64.decode($(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val()));
								info.item.image_width = width;
								info.item.image_height = height;
								$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
								if(info.shop)
								{
									if($.checkUrl(info.shop.logo))
									{
										$.Get_Image_Size(info.shop.logo,function(width,height){
											//info = jQuery.parseJSON(Base64.decode($(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val()));
											info.shop.image_width = width;
											info.shop.image_height = height;
											$(".PUB_IMG li[key='"+ info.item.key +"'] .GOODS_INFO",form).val(Base64.encode(JSON.stringify(info)));
										});
									}
								}
							});
						}
					});
				}
				$(".PUB_IMG li[key='"+ info.item.key +"'] span",form).click();
				$.Pub_Share_Tags(form);
			}
			
			$(".fast_btn",form).click(function(){
				if($('.PUB_SHARTE_GOODS',form).length>0&&!$('.PUB_SHARE_TAG',form).val().length){
					$.Show_MiNiTooltip($('.PUB_SHARE_TAG',form),"FAST_PUBLISH_GOODS_TAGS_MIN","给宝贝设置几个标签吧~~",false,1,$(form));	
					return false;
				}
				if (FANWE.SHARE_ID == undefined || FANWE.SHARE_ID == 0){
					if(!$('textarea[name=content]',form).val().length){
						$.Show_MiNiTooltip($('textarea[name=content]',form),"FAST_PUBLISH_GOODS_CONTENT_MIN","请输入分享内容<br />快来分享你的购物心得吧",false,1,$(form));	
						return false;
					}
				}
				var shareType = $(".SHARE_TYPE",form).val();
				/*switch(shareType)
				{
					case "look":
						if ($(".PUB_LOOK_DAPEI_GOODS",form).length > 0){
							if($('.PUB_IMG .PUB_SHARTE_GOODS',form).length < 1){
								$.Show_MiNiTooltip($(".PUB_LOOK_DAPEI_GOODS",form),"FAST_PUBLISH_LOOK_GOODS_MIN","亲，分享晒货，你还需要上传一个宝贝<br/>哦！",false,1,$(form));	
								return false;
							}
						}					
						
						if($('.PUB_IMG .PUB_SHARTE_PIC',form).length < 1)
						{
							$.Show_MiNiTooltip($(".PUB_LOOK_DAPEI_PHOTO",form),"FAST_PUBLISH_LOOK_GOODS_MIN","亲，分享晒货，你还需要上传一个宝贝<br/>的照片哦！",false,1,$(form));
							return false;
						}
					break;
					
					case "dapei":
						if($('.PUB_IMG .PUB_SHARTE_PIC',form).length < 1)
						{
							$.Show_MiNiTooltip($(".PUB_LOOK_DAPEI_PHOTO",form),"FAST_PUBLISH_DAPEI_IMAGE_MIN","亲，分享搭配，你还需要上传一个搭配<br/>照片哦！",false,1,$(form));	
							return false;
						}
					break;
				}*/
				
				FANWE.SHARE_SAVE_RESULT_FUNC = saveResult;
				$.Share_Save(this);
			});
			
			var saveResult = function(result){
				if (FANWE.SHARE_LOOK_TYPE == "look" || FANWE.SHARE_LOOK_TYPE == "dapei"){
					var ai = $('.ai_0 img');
					if (parseInt(FANWE.SHARE_LOOK_IMG_CLASS) > 0){
						ai = $('.ai_'+FANWE.SHARE_LOOK_IMG_CLASS+' img');						
					}
					$('.ai_'+FANWE.SHARE_LOOK_IMG_CLASS+' .itemprice').html('￥'+result.price);
					ai.attr('original', result.img_src);
					var src = result.img_src;				
					if (src.indexOf("/public/upload") >= 0){
						src = './../.'+result.img_src;
					}
					var scaleType = parseInt(ai.attr('scaleType'));
					var scaleWidth = parseInt(ai.attr('scaleWidth'));
					var scaleHeight = parseInt(ai.attr('scaleHeight'));		
					$.ScaleImage(ai[0],src,scaleType,scaleWidth,scaleHeight);
					ai.parent().css("background-image", "url("+ai.attr('src')+")");
					ai.parent().attr("onclick", "javascript:;");
					
					FANWE.SHARE_LOOK_TYPE = "";
					FANWE.SHARE_ID = 0;
					FANWE.SHARE_LOOK_IMG_CLASS = "";
					
					$.Fast_Share_Close();
				}
				else {
					weebox.setContent('<div class="FAST_SUCCESS">亲，你已成功发布分享，<a href="'+result.url+'" target="_blank">去看看&gt;&gt;</a></div>');
					var fun = function(){
						$.Fast_Share_Close();
					}
					setTimeout(fun,3000);
				}				
				
				FANWE.SHARE_SAVE_RESULT_FUNC = null;
			}
		};
		
		FANWE.WEEBOX_NOT_CLOSES.FAST_SHOW_SHARE_WEEBOX = true;
		$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastshow",{boxid:'FAST_SHOW_SHARE_WEEBOX',position:'top',contentType:'ajax',isFull:false,ajaxdata:query,draggable:false,showButton:false,showHeader:false,width:563,onopen:openFun});
	}
	
	$.Fast_Share_Photo = function(){
		$.weeboxs.close();
		var closeFun = function(){
			$.Pic_Upload_Clear();
		};
		var readyFun = function(weebox){
			FANWE.FAST_SHARE_Photo_HTML = weebox.dc.html();
			$.Pic_Init(weebox,function(result){
				$.Fast_Show_By_Type(false,result.info);
			});
		};
		if(FANWE.FAST_SHARE_Photo_HTML == null)
			$.weeboxs.open(SITE_PATH+"services/service.php?m=share&a=fastphoto",{boxid:'FAST_SHARE_PHOTO_WEEBOX',title:"分享图片",contentType:'ajax',draggable:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
		else
			$.weeboxs.open(FANWE.FAST_SHARE_Photo_HTML,{boxid:'FAST_SHARE_PHOTO_WEEBOX',title:"分享图片",contentType:'text',draggable:false,showButton:false,width:496,onclose:closeFun,onready:readyFun});
	}
	
	$.Fast_Share_Close = function(){
		delete FANWE.WEEBOX_NOT_CLOSES.FAST_SHOW_SHARE_WEEBOX;
		if(FANWE.FAST_SHARE_CLOSE_FUNC)
			FANWE.FAST_SHARE_CLOSE_FUNC.call(this);
		else
			$.weeboxs.close();
	}
	
	$.Show_Zone_Follow = function(){
		var readyFun = function(weebox){
			$(".zfc_selbox",weebox.dc).change(function(){
				if($(".zfc_selbox:checked",weebox.dc).length == $(".zfc_selbox",weebox.dc).length)
					$(".zfb_selectall",weebox.dc).attr("checked",true);
				else
					$(".zfb_selectall",weebox.dc).attr("checked",false);
			});
			
			$(".zfb_selectall",weebox.dc).change(function(){
				$(".zfc_selbox",weebox.dc).attr("checked",this.checked);
			});
		};
		$.weeboxs.open(SITE_PATH+"services/service.php?m=u&a=zone_follow",{boxid:'ZONE_FOLLOW_WEEBOX',contentType:'ajax',draggable:false,showButton:false,showTitle:false,showHeader:false,width:623,height:541,onready:readyFun});
	}
	
	$.Zone_Follow_Submit = function(obj){
		var parent = $(obj).parents("#zone_follow");
		var uids = new Array();
		$(".zfc_selbox:checked",parent).each(function(){
			uids.push(this.value);
		});
		
		if(uids.length == 0)
		{
			$.Show_MiNiTooltip($(obj),"ZONE_FOLLOW_SUBMIT_TIP","亲，你还没选择要关注的会员哦！",false,1,parent);
			return false;	
		}
		
		$.User_Follows(uids.join(','),function(result){
			$.weeboxs.close();
			var fun = function(){
				location.reload(true);	
			}
			setTimeout(fun,10);
		});
	}
	
	//窗口关闭
	$.Dialog_Close = function(){
		FANWE.SHARE_LOOK_TYPE = "";
		FANWE.SHARE_ID = 0;
		FANWE.SHARE_LOOK_IMG_CLASS = "";
		return false;
	}
})(jQuery);

(function($){
	$.getStringLength=function(str)
	{
		str = $.trim(str);

		if(str=="")
			return 0;

		var length=0;
		for(var i=0;i <str.length;i++)
		{
			if(str.charCodeAt(i)>255)
				length+=2;
			else
				length++;
		}

		return length;
	}
	
	$.getLengthString=function(str,length,isSpace)
	{
		if(arguments.length < 3)
			var isSpace = true;

		if($.trim(str)=="")
			return "";

		var tempStr="";
		var strLength = 0;

		for(var i=0;i <str.length;i++)
		{
			if(str.charCodeAt(i)>255)
				strLength+=2;
			else
			{
				if(str.charAt(i) == " ")
				{
					if(	isSpace)
						strLength++;
				}
				else
					strLength++;
			}

			if(length >= strLength)
				tempStr += str.charAt(i);
		}

		return tempStr;
	}

	$.checkRequire = function(value){
		var reg = /.+/;
        return reg.test($.trim(value));
	}

	$.minLength = function(value, length , isByte) {
		var strLength = $.trim(value).length;
		if(isByte)
			strLength = $.getStringLength(value);

		return strLength >= length;

	};

	$.maxLength = function(value, length , isByte) {
		var strLength = $.trim(value).length;
		if(isByte)
			strLength = $.getStringLength(value);

		return strLength <= length;
	};

	$.rangeLength = function(value, minLength,maxLength, isByte) {
		var strLength = $.trim(value).length;
		if(isByte)
			strLength = $.getStringLength(value);

		return strLength >= minLength && strLength <= maxLength;
	}

	$.checkMobilePhone = function(value){
		return /^(13\d{9}|18\d{9}|15\d{9})$/i.test($.trim(value));
	}

	$.checkPhone = function(val){
  		var flag = 0;
		val = $.trim(val);
  		var num = ".0123456789/-()";
  		for(var i = 0; i < (val.length); i++)
		{
    		tmp = val.substring(i, i + 1);
    		if(num.indexOf(tmp) < 0)
      			flag++;
 		}
  		if(flag > 0)
			return true;
		else
			return false;
	}

	$.checkEmail = function(val){
		var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		return reg.test(val);
	};

	$.checkUrl = function(val){
		var reg = /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i;
        return reg.test(val);
	};

	$.checkCurrency = function(val){
		var reg = /^\d+(\.\d+)?$/;
        return reg.test(val);
	};

	$.checkNumber = function(val){
		var reg = /^\d+$/;
        return reg.test(val);
	};

	$.checkInteger = function(val){
		var reg = /^[-\+]?\d+$/;
        return reg.test(val);
	};

	$.checkDouble = function(val){
		var reg = /^[-\+]?\d+(\.\d+)?$/;
        return reg.test(val);
	};

	$.checkPrice = function(val){
		var reg = /^\d+(\.\d+)?$/;
        return reg.test(val);
	};

	$.checkEnglish = function(val){
		var reg = /^[A-Za-z]+$/;
        return reg.test(val);
	};

	$.checkQQMsn = function(val){
		var reg = /^[1-9]*[1-9][0-9]*$|^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        return reg.test(val);
	};
	
	$.getClickIsElement = function(obj,event)
	{
		var offset = obj.offset();
		var minX = offset.left;
		var minY = offset.top;
		var maxX = minX + obj.width();
		var maxY = minY + obj.height();
		if(event.pageX < minX || event.pageX > maxX || event.pageY < minY || event.pageY > maxY)
			return false;
		else
			return true;
	}
	
	$.isParent = function(obj,parentObj){
		while (obj != undefined && obj != null && obj.tagName.toUpperCase() != 'BODY'){
			if (obj == parentObj){
				return true;
			}
			obj = obj.parentNode;
		}
		return false;
	}
	
	$.addBookmark = function (a,title,href) {
		var isIEmac = false; 
		var isMSIE = (-[1,]) ? false : true;
		var cjTitle = title?title:"步街网";
		var cjHref = href?href:location.href;
	 
		function hotKeys() {
			var ua = navigator.userAgent.toLowerCase();
			var str = '';
			var isWebkit = (ua.indexOf('webkit') != - 1);
			var isMac = (ua.indexOf('mac') != - 1);
	 
			if (ua.indexOf('konqueror') != - 1) {
				str = 'Ctrl + B'; // Konqueror
			} else if (window.home || isWebkit || isIEmac || isMac) {
				str = (isMac ? 'Command/Cmd' : 'Ctrl') + ' + D'; // Netscape, Safari, iCab, IE5/Mac
			}
			return ((str) ? '收藏失败，试试按下 ' + str + ' 进行收藏吧.' : str);
		}
	 
		function isIE8() {
			var rv = -1;
			if (navigator.appName == 'Microsoft Internet Explorer') {
				var ua = navigator.userAgent;
				var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
				if (re.exec(ua) != null) {
					rv = parseFloat(RegExp.$1);
				}
			}
			if (rv > - 1) {
				if (rv >= 8.0) {
					return true;
				}
			}
			return false;
		}
	 
		function addBookmark() {
			try {
				if (typeof a == "object" && a.get(0).tagName.toLowerCase() == "a") {
					if ((typeof window.sidebar == "object") && (typeof window.sidebar.addPanel == "function")) {
						window.sidebar.addPanel(cjTitle, cjHref, ""); // Gecko
						return false;   
					} else if (isMSIE && typeof window.external == "object") {
						if (isIE8()) {
							window.external.AddToFavoritesBar(cjHref, cjTitle); // IE 8                    
						} else {
							window.external.AddFavorite(cjHref, cjTitle); // IE <=7
						}
						return false;
					} else if (window.opera) {
						a.attr({'href':cjHref,'title':cjTitle,'rel':'sidebar'});
						return true;
					} else {
						$.Show_TopTip(hotKeys(),4000);
					}
				} else {
					throw "Error occured.\r\nNote, only A tagname is allowed!";
				}
			} catch (err) {
				$.Show_TopTip(err);
			}
	 
		}
		addBookmark();
//		return {
//			addBookmark : addBookmark
//		}
	}
})(jQuery);
var userMenuTimeOut = null;
jQuery(function($){
	var backTop=jQuery(".call-top");
	$(window).scroll(function(){
		if($(window).scrollTop()>150){
			backTop.css("display","block");
		}else{
			backTop.css("display","none");
		}
	})
	$('#back_top .call-top').click(function(){
		$('body,html').animate({scrollTop:0},500);
		return false;
	})
	
	var callcheck=$(".call-check");
	callcheck.hover(function(){
		clearTimeout(stime);
		jQuery("#checkTrap").fadeIn(500);	
	});
	
	var stime;
	callcheck.mouseout(function(){
		stime = setTimeout(function(){ $("#checkTrap").fadeOut(500); },500);
	});
	$("#checkTrap").hover(function(){
		clearTimeout(stime);
	});
	$("#checkTrap").mouseout(function(){
		stime=setTimeout(function(){$("#checkTrap").fadeOut(500);},500);
	});

	$("img.LOAD_SCALE_IMG").each(function(){
		var src = this.getAttribute('scaleSrc');
		var scaleType = parseInt(this.getAttribute('scaleType'));
		var scaleWidth = parseInt(this.getAttribute('scaleWidth'));
		var scaleHeight = parseInt(this.getAttribute('scaleHeight'));
		$.ScaleImage(this,src,scaleType,scaleWidth,scaleHeight);
	});
	
    $(".my_shotcuts a.message").hover(function(){
		$("#notice_menu").show();
	},function(){
		var menuHide = function(){
			$("#notice_menu").hide();
		};
		userMenuTimeOut = setTimeout(menuHide,100);
	});

	$("#notice_menu").hover(function(){
		clearTimeout(userMenuTimeOut);
	},function(){
		$(this).hide();
	});

	$(".PUB_TXT[position]").each(function(){
		$.Pub_Count_Bind(this);
	});

	$("input[tooltip],textarea[tooltip]").each(function(){
		if($.trim(this.value) == '')
		{
			this.value = this.getAttribute('tooltip');
			$(this).addClass('tipcolor');
		}
	});

	$("input[tooltip],textarea[tooltip]").focus(function(){
		$(this).removeClass('tipcolor');
		var tooltip = this.getAttribute('tooltip');
		if(this.value == tooltip)
			this.value = '';
	}).blur(function(){
		$(this).removeClass('tipcolor');
		if($.trim(this.value) == '')
		{
			this.value = this.getAttribute('tooltip');
			$(this).addClass('tipcolor');
		}
	});

	$('.SHOW_BIG_PIC').live('mousemove', function(){
		$('.SHOW_BIG',this).show();
	}).live('mouseout', function(){
		$('.SHOW_BIG',this).hide();
	});

	$('.SHARE_MANAGE').live('mouseover', function(){
		clearTimeout(FANWE.SHARE_MANAGE);
		$(".SHARE_MANAGE_LIST_CLONE").remove();
		var list = $(this).parent().siblings(".SHARE_MANAGE_LIST");
		var clone = list.clone();
		var left = $(this).offset().left + 10;
		var top = $(this).offset().top + 20;
		var height = $('li',list).length * 20 + 4;
		$('body').append(clone);
		clone.addClass('t_m_l SHARE_MANAGE_LIST_CLONE').css({"left":left,"top":top,"height":height}).slideDown(100);
	}).live('mouseout', function(){
		clearTimeout(FANWE.SHARE_MANAGE);
		var fun = function(){
			$(".SHARE_MANAGE_LIST_CLONE").hide();
		}
		FANWE.SHARE_MANAGE = setTimeout(fun,2000);
	});

	$(".SHARE_MANAGE_LIST_CLONE").live('mouseover', function(){
		clearTimeout(FANWE.SHARE_MANAGE);
		$(this).show();
	}).live('mouseout', function(){
		$(this).hide();
	});

	$(".PUB_SHARE_TAG_BOX li").live('click', function(){
		var form = $(this).parents("form");
		var tagInput = $('.PUB_SHARE_TAG',form);
		var tagValue = tagInput.val();
		tagValue = tagValue.replace('　',' ');
		tagValue = tagValue.replace(/ +/g,' ');
		tagValue = ' ' + $.trim(tagValue) + ' ';
		if($(this).hasClass('active'))
		{
			tagValue = tagValue.replace(' ' + $(this).html() + ' ',' ');
			$(this).removeClass('active');
		}
		else
		{
			tagValue += $(this).html();
			$(this).addClass('active');
		}

		tagValue = $.trim(tagValue);
		tagInput.val(tagValue);
	});

	if($("#back2top").length > 0)
	{
		var backtop = $("#back2top");
		var body_width = 960;
		body_width = $.browser.msie && $.browser.version == "6.0" ? 950 : 953;
		$("#back2top").css("left",Math.floor(($(window).width()-body_width)/2) + body_width + 5 + "px");
		$(window).scroll(function(){
			$(window).scrollTop()==0 ? backtop.fadeOut() : backtop.fadeIn()
		});

		$(window).resize(function(){
			var resize_width = Math.floor(($(window).width()-body_width)/2);
			if(resize_width > 10)
				backtop.css("left",resize_width + body_width + 5 + "px");
		});
	}
	
	$(".add_to_album_btn").each(function(){
		$(this).parent().hover(function(){
			$(".add_to_album_btn",this).show();
		},function(){
			$(".add_to_album_btn",this).hide();
		});
	});
/*
	$(".GUID").live('mouseover',function(){
		if(FANWE.GUID_DEFAULT_HTML == null)
			FANWE.GUID_DEFAULT_HTML = $("#USER_INFO_TIP").html();
		clearTimeout(FANWE.GUID_TIME_OUT);
		ClearUserTipAjax();
		var uid = parseInt(this.getAttribute('uid'));
		if(uid < 1)
			return;

//		UserTipShow(this,FANWE.GUID_DEFAULT_HTML);
		var query = new Object();
		query.uid = uid;
		
		var thisobj = this;
		
		FANWE.User_Tip_Ajax = $.ajax({
			url: SITE_PATH+"services/service.php?m=user&a=tip",
			type: "POST",
			data:query,
			cache:false,
			dataType: "html",
			success:function(html){
				if(html != '')
				{
					UserTipShow(thisobj,html);
				}
				else
					$("#USER_INFO_TIP").hide();
				ClearUserTipAjax();
			},
			error:function(){
				$("#USER_INFO_TIP").hide();
				ClearUserTipAjax();
			}
		});
	}).live('mouseout',function(){
		var fun = function(){
			$("#USER_INFO_TIP").hide();
		};
		FANWE.GUID_TIME_OUT = setTimeout(fun,500);
		ClearUserTipAjax();
	});
	
	$("#USER_INFO_TIP").hover(function(){
		clearTimeout(FANWE.GUID_TIME_OUT);
//		$("#USER_INFO_TIP").show();
	},function(){
		$("#USER_INFO_TIP").hide();
	});	
*/	
	//评论回复删除的显示和隐藏
	$(".c_l li").hover(function(){
		$(this).find(".rpl").css("visibility", "visible");
		$(this).find(".del").css("visibility", "visible");
	},function(){
		$(this).find(".rpl").css("visibility", "hidden");
		$(this).find(".del").css("visibility", "hidden");
	});
});

function UserTipShow(obj,html)
{
	$("#USER_INFO_TIP").html(html);
	
	var w = 302;
	var offset = $(obj).offset();
	var left = offset.left;
	var top = offset.top - $("#USER_INFO_TIP").height();
	var width = $(document).width() - 30;
	
	if(left + w > width)
		left = left - w + $(obj).width();
	else if(left < 30)
		left = 30;
	var c = offset.left - left + $(obj).width() / 2 - 8;
	
	$("#USER_INFO_TIP").css({"top":top,"left":left});
	$("#USER_INFO_TIP .tip_arrow").css({"margin-left":c});
	$("#USER_INFO_TIP").show();
}

function ClearUserTipAjax()
{
	if(FANWE.User_Tip_Ajax != null)
	{
		FANWE.User_Tip_Ajax.abort();
		FANWE.User_Tip_Ajax = null;
	}
}

function UserTipFollowHandler(obj,result)
{
	var parent = $(obj).parent();
	if(result.status == 1)
	{
		parent.html('<span class="fl icrad_add">已关注</span><a class="follow_del" href="javascript:;" onclick="$.User_Follow('+ result.uid +',this,UserTipFollowHandler);">取消</a>');
	}
	else
	{
		parent.html('&nbsp;<a class="green_button" onclick="$.User_Follow('+ result.uid +',this,UserTipFollowHandler);" href="javascript:;">+加关注</a>');
	}
}

function FlashTest(val)
{
	alert(val);
}

/**
 * 读取Cookie
 * @param name cookie名称
 * @returns
 */
function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
	if(arr != null) 
		return unescape(arr[2]); 
	return "";
}

