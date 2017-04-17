<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<css file="__STATIC__/css/admin/style.css" />
<script src="__STATIC__/js/admin/propeller.min.js"></script>
<title>购优惠授权-管理平台-管理员登陆</title>
</head>
<style type="text/css">
.tbk {
	color: #FC3;
}
div {
    display: block;
}
.login_wrap {
    width: 100%;
    height: 100%;
    position: fixed;
    z-index: 4;
    background: #AB7500 url('https://img.alicdn.com/imgextra/i4/1725571930/TB27OZOaGm5V1BjSszhXXcMtXXa_!!1725571930.jpg') no-repeat center;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.login_box {
    position: absolute;
    width: 500px;
    height: 320px;
    max-width: 500px;
    min-width: 500px;
    position: relative;
    width: 100%;
    margin: 0px auto;
    z-index: 6;
    top: 20%;
    background: #7FB2A4;
    background: rgba(0,0,0,0.1);
    box-shadow: 0 0 5px rgba(0,0,0,0.1);
    border: 1px solid rgba(255,255,255,0.1);
	-webkit-border-radius: 15px 15px 0 0;
    -moz-border-radius: 15px 15px 0 0;
    border-radius: 15px 15px 0 0;
}
.login_funbox {
    width: 260px;
    margin: 12px 120px 15px 120px;
}
.login_funbox1 {
    width: 260px;
    margin: 12px 120px 15px 120px;
}
.login_txt {
    line-height: 50px;
	height: 50px;
	font-weight:bold;
    color: #FFFFFF;
	font-size: 25px;
    width: 100%;
    display: block;
    cursor: pointer;
    text-align: center;
    background: #7FB2A4;
    background: rgba(0,0,0,0.1);
    box-shadow: 0 0 5px rgba(0,0,0,0.1);
    border: 1px solid rgba(255,255,255,0.1);
	-webkit-border-radius: 15px 15px 0 0;
    -moz-border-radius: 15px 15px 0 0;
    border-radius: 15px 15px 0 0;
}


.login_ipt {
    opacity: 0.6;
    width: 240px;
    height: 20px;
    color: #999;
    font-weight: 400;
    font-family: Microsoft Yahei;
    outline: none;
    padding: 10px;
    line-height: 20px;
    border: 0;
    color: #333;
    font-size: 13px;
    margin-top: 20px;
    box-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    background: #FAFAFA;
}
.loginbtn {
    opacity: 0.6;
    width: 260px;
    float: left;
    height: 40px;
    display: block;
    cursor: pointer;
    text-align: center;
    color: rgb(255, 255, 255);
    border-image-source: initial;
    border-image-slice: initial;
    border-image-width: initial;
    border-image-outset: initial;
    border-image-repeat: initial;
    box-shadow: rgba(0, 0, 0, 0.298039) 1px 1px 1px;
    border-width: initial;
    border-style: none;
    border-color: initial;
    background: rgb(255, 153, 204);
    font: 16px 'MicroSoft Yahei', 宋体, 宋体;
	margin: 0 0 30px 0;
}

</style>
<body class="login_body">
<div class="login_hd">
<div class="login_wrap">
  <div class="login_box">
    <form action="{:U('index/login')}" method="post" >
	   <div class="login_txt">
			会员登录
		</div>
      <div class="login_funbox">
        <input type="text" name="username" class="login_ipt" value="账号" onfocus="if (value =='账号'){value =''}" onblur="if (value ==''){value='账号'}">
        <input type="password" name="password" class="login_ipt" value="password" onfocus="if (value =='password'){value =''}" onblur="if (value ==''){value='password'}">
     </div>
   <div class="login_funbox1">
   <button type="submit" class="loginbtn">登陆</button>
   </div>
  </form>
 </div>
</div>
</body>
</html>