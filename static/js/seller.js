(function($){
    $.seller = {
        init:function(){
          $.seller.addseller();
          $.seller.show();
          $.seller.deleteone();
          $.seller.edit();
          $.seller.delete();
          $.seller.selected();
          $.seller.search();
          $.seller.have();
          $.seller.hides();
        },

        addseller:function(){
           $('#addseller').live('click',function(){
            window.location.href = FDX.addsellerurl;
           });
        },
        show:function(){
           $('.status').live('click',function(){
            var o  = $(this);
            var t  = o.attr('data-type');
            var i  = o.attr('data');
            var p  = o.attr('src');
            var v = null;
            if(p.indexOf('enabled.gif')>=0){
                v = 'N';
            }else if(p.indexOf('disabled.gif')>=0){
                v = 'Y';
            }
            $.get(FDX.showurl,{type:t,id:i,value:v,url:p},function(s){
                o.attr('src',s.msg);
            });
           });
        },
        deleteone:function(){
           $('.d').live('click',function(){
            var  o =$(this);
            var id=o.attr('data');
            if (confirm('删除?')) {
              $.get(FDX.deleteone,{sid:id},function(s){
                  if(s.status==1){
                    alert(s.msg);
                   window.location.reload();
                  }else{
                    alert(s.msg);
                  }
              });              
            }
           });
        },
        edit:function(){
          $('.e').live('click',function(){
            var  o =$(this);
            var id=o.attr('data');
            window.location.href = FDX.editurl+'&sid='+id;
          });
        },
        delete:function(){
          $('input[name="delete"]').live('click',function(e){
          var o = document.getElementsByName('select');
          var value = new Array();
              for (var i = o.length - 1; i >= 0; i--) {
                if(o[i].checked){
                  value[i] = o[i].value;
                }
              }
             if(value.length==0){
              alert('请先选择!');
              return;
             }
             if (confirm('删除?')) {
               $.post(FDX.deleteurl,{id:value},function(s){
                 if (s.status==1) {
                  alert(s.msg);
                  window.location.href=s.data;
                 }
               });
             }
          });
        },
        selected:function(){
          $('input[name="selecte"]').live('click',function(e){
          var o = document.getElementsByName('select');
              for (var i = o.length - 1; i >= 0; i--) {
                if(o[i].checked){
                  o[i].checked = false;
                }else{
                  o[i].checked = true;
                }
              }
          });
        },
        search:function(){
          $('#searchs').live('click',function(){
           var kn =  $('input[name="kn"]');
           var kw =  $('input[name="kw"]');
           var k1 = kn.attr('value');
           var k2 = kw.attr('value');
           $.get(FDX.index,{ks:k1,km:k2},function(s){
            window.location.href = s.msg;
           });

          });
        },
        have:function(){
          $('.t').live('click',function(){
             var id = $(this).attr('data');
             var windowWidth = $(document).width();
             var windowHeight = $(document).height();
             $('<div class="mask"></div>').appendTo($('body'));
             $('div.mask').css({
               'opacity':0.6,
               'background':'#000',
               'position':'absolute',
               'top':0,
               'left':0,
               'width':windowWidth,
               'height':windowHeight,
               'z-index':1000          
             });
             $('#msg1').css({display:'block','z-index':1001});
             $.get(FDX.have,{sid:id},function(s){
                if (s.status==1) {
                 $('#tip').html('提取成功!正在添加！');
                 $.seller.itemsadd();
                }
             });
          });
        },
        itemsadd:function(){
            $.get(FDX.additems,function(s){
              if (s.status==1) {
                $('#msg1').hide();
                $('#msg2').append(s.msg);
                $('#msg2').show();
              };
            });
        },
        hides:function(){
          $('#msg2').live('click',function(){
              $('#msg2').hide();
              $('.mask').hide();            
          });

        },
    };
    $.seller.init()
   })(jQuery);