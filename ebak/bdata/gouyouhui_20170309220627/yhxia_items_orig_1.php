<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_items_orig`;");
E_C("CREATE TABLE `yhxia_items_orig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_items_orig` values('1','50b2e721a6c1e_thumb.jpg','淘宝','C','taobao.com','0');");
E_D("replace into `yhxia_items_orig` values('2','50b2e726d4ade_thumb.jpg','天猫','B','tmall.com','0');");

require("../../inc/footer.php");
?>