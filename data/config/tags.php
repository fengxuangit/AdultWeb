<?php

// 行为插件
return array(
    /**
     +------------------------------------------------------------------------------
     * 系统标签
     +------------------------------------------------------------------------------
     */
    'app_begin' => array(
        'check_ipban', //禁止IP
        'load_lang', //语言
    ),
    'view_template' => array(
        'basic_template','_overlay'=>1, //自动定位模板文件
    ),
    'view_filter' => array(
        'content_replace', //路径替换
    ),
	'action_begin' => array(
		//'OnlineCheck', //在线检测
	),

    /**
     +------------------------------------------------------------------------------
     * 用户行为标签
     +------------------------------------------------------------------------------
     */
    //登陆
    'login_begin' => array(
    ),
    'login_end' => array(
        'alter_score', // 积分
    ),
    //注册
    'register_begin' => array(
    ),
    'register_end' => array(
        'alter_score', // 积分
    ),
);