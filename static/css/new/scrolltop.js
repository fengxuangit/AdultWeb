
	function goTopEx(){
        var obj=document.getElementById("goTopBtn");
        function getScrollTop(){
                return document.documentElement.scrollTop+document.body.scrollTop;
            }
        function setScrollTop(value){
                document.body.scrollTop=value;
				document.documentElement.scrollTop=value;
            }    
        window.onscroll=function(){getScrollTop()>0?obj.style.display="":obj.style.display="none";}
        obj.onclick=function(){
            var goTop=setInterval(scrollMove,10);
            function scrollMove(){
                    setScrollTop(getScrollTop()/1.8);
                    if(getScrollTop()<1)clearInterval(goTop);
                }
        }
}
goTopEx();


 