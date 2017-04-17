<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_youhunquancaiji`;");
E_C("CREATE TABLE `yhxia_youhunquancaiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '采集器ID',
  `name` varchar(200) DEFAULT NULL COMMENT '采集器名称',
  `name1` varchar(200) DEFAULT NULL COMMENT '采集器名称',
  `cate` int(11) DEFAULT '0' COMMENT '所属分类',
  `cate1` int(11) DEFAULT '0' COMMENT '所属分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_youhunquancaiji` values('1','男女服装','男女服装','1','2');");
E_D("replace into `yhxia_youhunquancaiji` values('2','母婴必备','母婴必备','2','1');");
E_D("replace into `yhxia_youhunquancaiji` values('3','化妆用品','化妆用品','3','3');");
E_D("replace into `yhxia_youhunquancaiji` values('4','居家日用','居家日用','4','4');");
E_D("replace into `yhxia_youhunquancaiji` values('5','鞋包配饰','鞋包配饰','5','5');");
E_D("replace into `yhxia_youhunquancaiji` values('6','美食小吃','美食小吃','6','6');");
E_D("replace into `yhxia_youhunquancaiji` values('7','文体车品','文体车品','7','7');");
E_D("replace into `yhxia_youhunquancaiji` values('8','数码家电','数码家电','8','8');");

require("../../inc/footer.php");
?>