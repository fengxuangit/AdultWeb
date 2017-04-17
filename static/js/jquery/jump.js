(function(win,doc){
        var s = doc.createElement("script"), h = doc.getElementsByTagName("head")[0];
        if (!win.alimamatk_show) {
            s.charset = "gbk";
            s.async = true;
            s.src = "http://a.alimama.cn/tkapi.js";
            h.insertBefore(s, h.firstChild);
        };
        var o = {
            pid: "mm_12867605_4284380_14472126",
            appkey: "",
            unid: "",
      plugins:[{name:"keyword"}]
        };
        win.alimamatk_onload = win.alimamatk_onload || [];
        win.alimamatk_onload.push(o);
    })(window,document);
function t(){
  var fd='writeable_iframe_0';
  var fed=document.getElementById(fd);
  var k = "mm_12867605_4284380_14472126";
  if(fed&&fed!='undefined'){
        var fed=document.getElementById(fd).contentDocument||document.frames[fd].document;
        var t=fed.getElementsByTagName('a')[0];
        var url='';
        if(t.href && t.href!='undefined'){
            url=t.href;
            if(url.indexOf(k)>0){
                window.location.href=url;
              }else{
                      $("#aniu").css({width:'195px',height:'42px',overflow:''});
              }
          }else{
                  $("#aniu").css({width:'195px',height:'42px',overflow:''});
          }
    }else{
      $("#aniu").css({width:'195px',height:'42px',overflow:''});
    }  
}
var timer = setInterval(t,1000);