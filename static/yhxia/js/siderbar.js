 $(document).ready(function(){
    $('#goTop').click(function(){
    $('body').animate({scrollTop: 0},{ duration:220 , queue:false });
});

        $(window).scroll(function (){
            var menuYloc = $(window).scrollTop(); 
            var h = getPageSize();
                h= h[1];
            var hh = h-800;
            var sidebar = $('.side_nav'); 
            if(menuYloc<=120){
                menu='80px';
                sidebar.removeClass('new1');
                sidebar.removeClass('nnew1');
                sidebar.addClass('old1');
                $(".old1").css({'top' : menu,'position':'absolute'}); 
            }
            if(menuYloc>120&&menuYloc<=hh){
                menu = '100px'; 
                sidebar.removeClass('old1');
                sidebar.removeClass('nnew1');
                sidebar.addClass('new1');
                $(".new1").css({'top' : menu,'position':'fixed'});   
            }
            if(menuYloc>hh){
                menu = '100px'; 
                sidebar.removeClass('old1');
                sidebar.removeClass('new1');
                sidebar.addClass('nnew1');
                $(".nnew1").css({'top' : hh,'position':'absolute'});
            }
            if (menuYloc>120) {
                $('.jky').css('display','block');
            }else{
                $('.jky').css('display','none');
            }
                       
        });  
    });

 function getPageSize() {

    var xScroll, yScroll;

    if (window.innerHeight && window.scrollMaxY) {

        xScroll = window.innerWidth + window.scrollMaxX;

        yScroll = window.innerHeight + window.scrollMaxY;

    } else {

        if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac    

            xScroll = document.body.scrollWidth;

            yScroll = document.body.scrollHeight;

        } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari    

            xScroll = document.body.offsetWidth;

            yScroll = document.body.offsetHeight;

        }

    }

    var windowWidth, windowHeight;

    if (self.innerHeight) { // all except Explorer    

        if (document.documentElement.clientWidth) {

            windowWidth = document.documentElement.clientWidth;

        } else {

            windowWidth = self.innerWidth;

        }

        windowHeight = self.innerHeight;

    } else {

        if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode    

            windowWidth = document.documentElement.clientWidth;

            windowHeight = document.documentElement.clientHeight;

        } else {

            if (document.body) { // other Explorers    

                windowWidth = document.body.clientWidth;

                windowHeight = document.body.clientHeight;

            }

        }

    }       

    // for small pages with total height less then height of the viewport    

    if (yScroll < windowHeight) {

        pageHeight = windowHeight;

    } else {

        pageHeight = yScroll;

    }    

    // for small pages with total width less then width of the viewport    

    if (xScroll < windowWidth) {

        pageWidth = xScroll;

    } else {

        pageWidth = windowWidth;

    }

    arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight);

    return arrayPageSize;

}