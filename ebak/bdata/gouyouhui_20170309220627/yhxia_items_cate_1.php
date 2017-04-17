<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_items_cate`;");
E_C("CREATE TABLE `yhxia_items_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `sort` varchar(50) NOT NULL DEFAULT 'id  desc',
  `wait_time` varchar(50) NOT NULL DEFAULT '0',
  `end_time` varchar(50) NOT NULL DEFAULT '0',
  `shop_type` varchar(11) NOT NULL COMMENT 'B:商城C:集市',
  `mix_price` decimal(11,2) DEFAULT NULL,
  `max_price` decimal(11,2) DEFAULT NULL,
  `mix_volume` int(11) DEFAULT NULL,
  `max_volume` int(11) DEFAULT NULL,
  `ems` varchar(50) NOT NULL DEFAULT '0',
  `thiscid` int(11) NOT NULL DEFAULT '0' COMMENT '是否当前分类',
  `add_time` int(10) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_items_cate` values('8','数码家电','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','8','1','','','');");
E_D("replace into `yhxia_items_cate` values('7','文体车品','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','7','1','','','');");
E_D("replace into `yhxia_items_cate` values('6','美食小吃','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','6','1','','','');");
E_D("replace into `yhxia_items_cate` values('5','鞋包配饰','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','5','1','','','');");
E_D("replace into `yhxia_items_cate` values('4','居家日用','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','4','1','','','');");
E_D("replace into `yhxia_items_cate` values('3','化妆用品','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','3','1','','','');");
E_D("replace into `yhxia_items_cate` values('2','男女服装','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','1','1','','','');");
E_D("replace into `yhxia_items_cate` values('1','母婴必备','','9','9|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','2','1','','','');");
E_D("replace into `yhxia_items_cate` values('10','时尚女装','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','2','1','','','');");
E_D("replace into `yhxia_items_cate` values('11','精品男装','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','3','1','','','');");
E_D("replace into `yhxia_items_cate` values('9','内部券','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','1','1','','','');");
E_D("replace into `yhxia_items_cate` values('12','女士鞋包','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','4','1','','','');");
E_D("replace into `yhxia_items_cate` values('13','男士鞋包','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','5','1','','','');");
E_D("replace into `yhxia_items_cate` values('16','美食小吃','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','7','1','','','');");
E_D("replace into `yhxia_items_cate` values('15','家用电器','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','8','1','','','');");
E_D("replace into `yhxia_items_cate` values('17','礼物礼品','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','9','1','','','');");
E_D("replace into `yhxia_items_cate` values('14','母婴必备','','0','0','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','6','1','','','');");
E_D("replace into `yhxia_items_cate` values('21','卫衣/绒衫','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('22','外套','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('23','大码女装','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('24','雪纺衫','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('25','T恤','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('26','休闲裤','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('27','长裙','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('28','半身裙','','10','10|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('29','针织衫/毛衣','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('30','西装','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('31','牛仔裤','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('32','休闲裤','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('33','外套','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('34','风衣','','11','11|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('35','包包','','12','12|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','1','1','','','');");
E_D("replace into `yhxia_items_cate` values('36','休闲鞋','','12','12|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','3','1','','','');");
E_D("replace into `yhxia_items_cate` values('37','高跟鞋','','12','12|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','4','1','','','');");
E_D("replace into `yhxia_items_cate` values('38','凉鞋','','12','12|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','2','1','','','');");
E_D("replace into `yhxia_items_cate` values('39','女靴','','12','12|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','5','1','','','');");
E_D("replace into `yhxia_items_cate` values('40','运动鞋','','13','13|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('41','休闲鞋','','13','13|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('42','皮鞋','','13','13|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('43','凉鞋拖鞋','','13','13|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('44','孕妇用品','','14','14|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('45','宝宝用品','','14','14|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('46','厨房电器','','16','16|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('47','生活电器','','16','16|','','volume desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");
E_D("replace into `yhxia_items_cate` values('49','折上折','','0','0','','coupon_rate  desc','0','0','','0.00','0.00','0','0','0','0','0','255','1','','','');");

require("../../inc/footer.php");
?>