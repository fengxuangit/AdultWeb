var cont=document.getElementById('cont');
var tsxx=document.getElementById('tsxx');
var starttimes = document.getElementsByName('starttime')[0];
function  getstarttime(){
  var xhr = new XMLHttpRequest()||new ActiveXObject("Microsoft.XMLHTTP");
  xhr.open('get',gettimeurl,true);
  xhr.onreadystatechange =function(){
   if((this.readyState==4)&&(this.status==200)){ 
      var rz =this.responseText;
      var json = eval('('+rz+')');
       var ol = starttimes.options.length;
       starttimes.options[0].selected=false;
       for (var i = ol - 1; i >= 0; i--) {
           if(starttimes.options[i].value==json.status){
              starttimes.options[i].selected=true;
           }
       };
   }
  }
  xhr.send();
}
getstarttime();

starttimes.onchange = function(){
  var xhr = new XMLHttpRequest()||new ActiveXObject("Microsoft.XMLHTTP");
  xhr.open('get',timeurl+'&starttime='+this.value,true);
  xhr.onreadystatechange =function(){
   if((this.readyState==4)&&(this.status==200)){ 
      var rz =this.responseText;
      console.log(rz);
   }
  }
  xhr.send();
}
function cai(){
var fm = document.getElementById('myForm');
var fd = new FormData(fm);
      //AJAX部分
	  var xhr = new XMLHttpRequest();
	  xhr.open('post',curlbegin,true);
	  xhr.onreadystatechange =function(){
	   if((this.readyState==4)&&(this.status==200)){ 
            var rz =this.responseText;
            var json = eval('('+rz+')');
            if (json.status==0) {
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }else if(json.status==2){
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }else if (json.status==3) {
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }else if (json.status==4) {
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }else if (json.status==5) {
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }else if (json.status==1) {
	            cont.innerHTML='';
	            tsxx.innerHTML='';
	            cont.style.display='block';
	            cont.innerHTML = json.data; 
	            tsxx.innerHTML='采集完成！请选择是否添加！';           	
            }
	   }
	  }
	  xhr.send(fd);
}
function begin(){
tsxx.innerHTML='采集中,请稍后<img src="'+ pic +'"/>';
cont.innerHTML = '';
setTimeout('cai()',1000);
}
function add(){
	 setTimeout('addok()',1000);
     tsxx.innerHTML='正在添加,请稍后<img src="'+ pic +'"/>';
}
function addok(){
	      //AJAX部分
	  var xhr = new XMLHttpRequest();
	  xhr.open('get',curladditems,true);
	  xhr.onreadystatechange =function(){
	   if((this.readyState==4)&&(this.status==200)){
            var rz =this.responseText;
            var json = eval('('+rz+')');
		   if(json.status==1){
            var rz =this.responseText;
            var json = eval('('+rz+')');
            tsxx.innerHTML = '添加完成'; 
            cont.innerHTML = json.data;
		   }else if (json.status==11) {
            	cont.innerHTML='';
	            tsxx.innerHTML='';
	            tsxx.innerHTML=json.data;
	            return;
            }

	   }else{
	   	tsxx.innerHTML ="添加失败,请从新采集!"
	   }
	  }
	  xhr.send();
}