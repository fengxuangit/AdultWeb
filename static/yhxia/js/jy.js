/***
 控制显示推荐语
***/
$('.goods_box').live('mouseover',function(){
  $(this).css('border','2px solid #FF9D00');
   $(this).css({height:'450px',background:'#fff'});
   $(this).children(".jy").css('display','block');
});
$('.goods_box').live('mouseout',function(){
  $(this).css('border','');
  $(this).css({height:'394px',background:''});
  $(this).children(".jy").css('display','none');
});