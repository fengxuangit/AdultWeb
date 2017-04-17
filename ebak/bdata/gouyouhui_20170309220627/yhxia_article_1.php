<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_article`;");
E_C("CREATE TABLE `yhxia_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_article` values('3','0','游魂网络游魂侠淘宝客，欢迎您的使用','游魂网络','<p>	游魂网络游魂侠淘宝客是业界排前的淘宝客程序，目前已经更新多个版本，都已经给予客户免费升级了。并提供超大售后群，以及目前购买即送论坛vip。只要25元，低价分享结交更多好友哈，欢迎加入我们的超级群。</p><p>游魂网络淘宝客：http://zhe800.yhtbk.cc</p><p>	博客www.yhtbk.cc</p><p>	游魂QQ:2529681043</p>','0','255','1410191425','0','1','','','');");

require("../../inc/footer.php");
?>