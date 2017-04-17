<include file="public:header" />
<!--商品列表-->
<div class="subnav">
	<div class="content_menu ib_a blue line_x">
		<em>点击u站采集</em>
	</div>

</div>
<div class="pad_lr_10" >
    


 
</div>
<include file="public:footer" />
<script>
    var collect_url = "{:U('robots/item_checks')}";
    var p = 1;
    function auto_check(){
        $.getJSON(collect_url, {auto:1}, function(result){
            if(result.status == 1){
                $.dialog({id:'cmt_yhxia', title:result.msg.title, content:result.data, padding:'', lock:true});
                p = result.msg.p;
                setTimeout("auto_check_page("+p+")",1000);
            }else{
                $.yhxia.tip({content:result.msg});
            }
        });
    }
    function auto_check_page(p){ 
	var ps = p+1;
	var intervalProcess = setInterval("auto_check_page("+ ps+")",50000);
        $.getJSON(collect_url, {p:p,auto:1}, function(result){
            if(result.status == 1){
                $.dialog.get('cmt_yhxia').content(result.data);
                p = result.msg.p;
		clearInterval(intervalProcess);
                setTimeout("auto_check_page("+ p+")",1000);
            }else{
                $.dialog.get('cmt_yhxia').close();
                $.yhxia.tip({content:result.msg});
            }
        });
    }
</script>
</body>
</html>