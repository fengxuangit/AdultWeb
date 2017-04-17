/**
 * @name 弹窗
 */
;(function($){
    $.yhxia.dialog = {
        //登陆
        islogin: function(){
            return "" == FTXIAER.uid ? ($.yhxia.dialog.login(), !1) : !0;
        },
        login: function(){
            $.getJSON(FTXIAER.root + '/?m=user&a=login', function(result){
                if(result.status == 0){
                    $.yhxia.tip({content:result.msg, icon:'error'});
                }else{
                    $.dialog({id:'login', title:lang.login_title, content:result.data, padding:'', fixed:true, lock:true});
                    $.yhxia.dialog.dlogin_form($('#J_dlogin_form'));
                }
            });
        },
        dlogin_form: function(form){
            form.ajaxForm({
                beforeSubmit: function(){
                    var username = form.find('.J_username').val(),
                        password = form.find('.J_password').val();
                    if(username == ''){
                        form.find('#J_login_fail').html('请输入用户名！').css("visibility", 'visible');
                        return !1;
                    }
                    if(password == ''){
                        form.find('#J_login_fail').html('请输入密码！').css("visibility", 'visible');
                        return !1;
                    }
                },
                success: function(result){
                    if(result.status == 1){
                        $.dialog.get('login').title(false).content('<div class="d_loading">'+result.msg+'</div>').time(2000);
                        window.location.reload();
                    } else {
                        form.find('#J_login_fail').html(result.msg).css("visibility", 'visible');
                    }
                },
                dataType: 'json'
            });
        }
    };
})(jQuery);