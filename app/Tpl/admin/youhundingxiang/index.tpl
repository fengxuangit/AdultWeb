<include file="public:header" />
<div class="subnav">
<h1 class="title_2 line_x">自动申请定向计划插件(申请之前需先在站点设置中设置阿里妈妈Cookie)</h1>
</div>
<div class="pad_lr_10">
定向计划自动申请中...
</div>
<include file="public:footer" />
<script type="text/javascript">
	//var j = window.setInterval('$.getJSON("{:U('youhundingxiang/setting')}",{}, function(result){if(result.msg.title==0){window.clearInterval(j);/*alert("cookies已失效！");*/} $(".pad_lr_10").html(result.data);});',1000);
	var panduan;
	window.setInterval(panduan,10000);
	window.setTimeout(youhundingxiang,1000); 
	function youhundingxiang(){
		$.getJSON("{:U('youhundingxiang/setting')}",{}, function(result){
			if(result.msg.title==0){
				/*alert("cookies已失效！");*/
			}else{
				$(".pad_lr_10").html(result.data);
				youhundingxiang();
			} 
			if(result.status == 0){
                $(".pad_lr_10").html(result.msg);
			}
		});
	}
	function panduan(){
			if(panduan==$(".pad_lr_10").html()){
				window.location.reload();
			}else{
				panduan = $(".pad_lr_10").html();
			} 
	} 
</script>
</body>
{$copy_right.title}　
</html>