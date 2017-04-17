/**
 * Dialog
 *
 * @author    caixw <http://www.caixw.com>
 * @copyright Copyright (C) 2010, http://www.caixw.com
 * @license   FreeBSD license
 */


/**
 * jQuery��Dialog�����
 *
 * @param object content
 * @param object options ѡ�
 * @return 
 */
function Dialog(content, options)
{
    var defaults = { // Ĭ��ֵ�� 
        title:'����',       // �����ı�����������ʾtitle��ͨ��CSS������displayΪnone 
        showTitle:true,     // �Ƿ���ʾ��������
        closeText:'[�ر�]', // �رհ�ť���֣���������ʾ�رհ�ť��ͨ��CSS������displayΪnone 
        draggable:true,     // �Ƿ��ƶ� 
        modal:true,         // �Ƿ���ģ̬�Ի��� 
        center:true,        // �Ƿ���С� 
        fixed:true,         // �Ƿ����ҳ�������
        time:0,             // �Զ��ر�ʱ�䣬Ϊ0��ʾ�����Զ��رա� 
        id:false            // �Ի����id����Ϊfalse������ϵͳ�Զ�����һ��Ψһid�� 
    };
    var options = $.extend(defaults, options);
    options.id = options.id ? options.id : 'dialog-' + Dialog.__count; // ΨһID
    var overlayId = options.id + '-overlay'; // ���ֲ�ID
    var timeId = null;  // �Զ��رռ�ʱ�� 
    var isShow = false;
    var isIe = $.browser.msie;
    var isIe6 = $.browser.msie && ('6.0' == $.browser.version);

    /* �Ի���Ĳ��ּ��������ݡ�*/
    var barHtml = !options.showTitle ? '' :
        '<div class="bar"><span class="title">' + options.title + '</span><a class="close">' + options.closeText + '</a></div>';
    var dialog = $('<div id="' + options.id + '" class="dialog">'+barHtml+'<div class="content"></div></div>').hide();
    $('body').append(dialog);


    /**
     * ���öԻ����λ�á�
     *
     * ��Ҫ������Ҫ���е�ʱ��ÿ�μ��������ݣ���Ҫ���¶�λ
     *
     * @return void
     */
    var resetPos = function()
    {
        /* �Ƿ���Ҫ���ж�λ���������Ѿ�֪����dialogԪ�ش�С������£�������ȷ���У�Ҳ����Ҫ������dialog�����ݡ� */
        if(options.center)
        {
            var left = ($(window).width() - dialog.width()) / 2;
            var top = 100;
            if(!isIe6 && options.fixed)
            {   dialog.css({top:top,left:left});   }
            else
            {   dialog.css({top:top+$(document).scrollTop(),left:left+$(document).scrollLeft()});   }
        }
    }

    /**
     * ��ʼ��λ�ü�һЩ�¼�������
     *
     * ���е�this��ʾDialog���������init������
     */
    var init = function()
    {
        /* �Ƿ���Ҫ��ʼ���������ֲ� */
        if(options.modal)
        {
            $('body').append('<div id="' + overlayId + '" class="dialog-overlay"></div>');
            $('#' + overlayId).css({'left':0, 'top':0,
                    /*'width':$(document).width(),*/
                    'width':'100%',
                    /*'height':'100%',*/
                    'height':$(document).height(),
                    'z-index':++Dialog.__zindex,
                    'position':'absolute'})
                .hide();
        }

        dialog.css({'z-index':++Dialog.__zindex, 'position':options.fixed ? 'fixed' : 'absolute'});

		/*  IE6 ����fixed���� */
        if(isIe6 && options.fixed)
        {
            dialog.css('position','absolute');
            resetPos();
            var top = parseInt(dialog.css('top')) - $(document).scrollTop();
            var left = parseInt(dialog.css('left')) - $(document).scrollLeft();
            $(window).scroll(function(){
                dialog.css({'top': '100px','left':$(document).scrollLeft() + left});
            });
        }

        /* ���´��봦������Ƿ�����ƶ� */
        var mouse={x:0,y:0};
        function moveDialog(event)
        {
            var e = window.event || event;
            var top = parseInt(dialog.css('top')) + (e.clientY - mouse.y);
            var left = parseInt(dialog.css('left')) + (e.clientX - mouse.x);
            dialog.css({top:top,left:left});
            mouse.x = e.clientX;
            mouse.y = e.clientY;
        };
        dialog.find('.bar').mousedown(function(event){
            if(!options.draggable){  return; }

            var e = window.event || event;
            mouse.x = e.clientX;
            mouse.y = e.clientY;
            $(document).bind('mousemove',moveDialog);
        });
        $(document).mouseup(function(event){
            $(document).unbind('mousemove', moveDialog);
        });

        /* ��һЩ����¼��� */
        dialog.find('.close').bind('click', this.close);
        dialog.bind('mousedown', function(){  dialog.css('z-index', ++Dialog.__zindex); });

        // �Զ��ر� 
        if(0 != options.time){  timeId = setTimeout(this.close, options.time);    }
    }


    /**
     * ���öԻ�������ݡ� 
     *
     * @param string c ������HTML�ı���
     * @return void
     */
    this.setContent = function(c)
    {
        var div = dialog.find('.content');
        if('object' == typeof(c))
        {
            switch(c.type.toLowerCase())
            {
            case 'id': // ��ID�����ݸ��ƹ�����ԭ���Ļ��ڡ�
                div.html($('#' + c.value).html());
                break;
            case 'img':
                div.html('������...');
                $('<img alt="" />').load(function(){div.empty().append($(this));resetPos();})
                    .attr('src',c.value);
                break;
            case 'url':
                div.html('������...');
                $.ajax({url:c.value,
                        success:function(html){div.html(html);resetPos();},
                        error:function(xml,textStatus,error){div.html('������')}
                });
                break;
            case 'iframe':
                div.append($('<iframe frameborder=0 src="' + c.value + '" />'));
                break;
            case 'text':
            default:
                div.html(c.value);
                break;
            }
        }
        else
        {   div.html(c); }
    }

    /**
     * ��ʾ�Ի���
     */
    this.show = function()
    {
        if(undefined != options.beforeShow && !options.beforeShow())
        {   return;  }

        /**
         * ���ĳһԪ�ص�͸���ȡ�IE���˾��л�á�
         *
         * @return float
         */
        var getOpacity = function(id)
        {
            if(!isIe)
            {   return $('#' + id).css('opacity');    }

            var el = document.getElementById(id);
            return (undefined != el
                    && undefined != el.filters
                    && undefined != el.filters.alpha
                    && undefined != el.filters.alpha.opacity)
                ? el.filters.alpha.opacity / 100 : 1;
        }
        /* �Ƿ���ʾ�������ֲ� */
        if(options.modal)
        {   $('#' + overlayId).fadeTo('slow', getOpacity(overlayId));   }
        dialog.fadeTo('slow', getOpacity(options.id), function(){
            if(undefined != options.afterShow){   options.afterShow(); }
            isShow = true;
        });
        // �Զ��ر� 
        if(0 != options.time){  timeId = setTimeout(this.close, options.time);    }

        resetPos();
    }


    /**
     * ���ضԻ��򡣵�����ȡ���������ݡ�
     */
    this.hide = function()
    {
        if(!isShow){ return; }

        if(undefined != options.beforeHide && !options.beforeHide())
        {   return;  }

        dialog.fadeOut('slow',function(){
            if(undefined != options.afterHide){   options.afterHide(); }
        });
        if(options.modal)
        {   $('#' + overlayId).fadeOut('slow');   }

        isShow = false;
    }

    /**
     * �رնԻ��� 
     *
     * @return void
     */
    this.close = function()
    {
        if(undefined != options.beforeClose && !options.beforeClose())
        {   return;  }

        dialog.fadeOut('slow', function(){
            $(this).remove();
            isShow = false;
            if(undefined != options.afterClose){   options.afterClose(); }
        });
        if(options.modal)
        {   $('#'+overlayId).fadeOut('slow', function(){$(this).remove();}); }
        clearTimeout(timeId);
    }

    

    init.call(this);
    this.setContent(content);
	//window.scrollTo(0,document.body.scrollHeight);
    
    Dialog.__count++;
    Dialog.__zindex++;
}
Dialog.__zindex = 10000;
Dialog.__count = 1;
Dialog.version = '1.0 beta';

function dialog(content, options)
{
	var dlg = new Dialog(content, options);
	dlg.show();
	return dlg;
}

