(function($){
    $.addseller = {
      init:function(){
        $.addseller.upload5();
        $.addseller.uppic();
      },
      upload5:function(){
         $('#upload').live('click',function(){
                $.addseller.up(FDX.addcontent);
          });
        },
        uppic:function(){
          $('input[name="logos"]').live('change',function(){
              $.addseller.up(FDX.addpic,'logo');
          });
          $('input[name="fpics"]').live('change',function(){
              $.addseller.up(FDX.addpic,'fpic');
          });
        },
        up:function(url,tip){
         var fd = document.getElementsByName('MyForm')[0];
         var fm = new FormData(fd);
         //对IE兼容
          var xhr = new XMLHttpRequest() || new ActiveXObject("Microsoft.XMLHTTP");
          xhr.open('post',url,true);
          xhr.onreadystatechange =function(){
           if((this.readyState==4)&&(this.status==200)){
               var uprz = this.responseText;
               var uprz = eval('('+uprz+')');
               if (uprz.status == 1) {
                alert(uprz.msg);
                window.location.reload();
               }else if (uprz.status==2) {
                $('#'+tip+'s').css('display','none');
                $('input[name="'+tip+'"]').attr('value',uprz.data);
               }else{
                alert(uprz.msg+uprz.error);
               };
              }
            }
            xhr.send(fm);
        }, 
      };
//初始化
$.addseller.init();
})(jQuery)