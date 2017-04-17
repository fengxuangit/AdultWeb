<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_nav`;");
E_C("CREATE TABLE `yhxia_nav` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_nav` values('1','main','超级人气榜','top100','/?m=top100','0','2','','1');");
E_D("replace into `yhxia_nav` values('2','main','特卖精选','jingxuan','/?m=jingxuan','0','3','','1');");
E_D("replace into `yhxia_nav` values('3','main','二十元封顶','ershi','/?m=ershi','0','5','','1');");
E_D("replace into `yhxia_nav` values('4','main','九块九包邮','jiu','/?m=jiu','0','4','','1');");
E_D("replace into `yhxia_nav` values('5','main','优惠券','nbyhj','/index.php?m=index&a=cate&cid=9','0','2','','1');");
E_D("replace into `yhxia_nav` values('6','main','折上折专区【只限群内】','zsz','/index.php?m=index&a=cate&cid=49','0','255','','1');");

require("../../inc/footer.php");
?>