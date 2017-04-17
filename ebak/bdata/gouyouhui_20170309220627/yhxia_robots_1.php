<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_robots`;");
E_C("CREATE TABLE `yhxia_robots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '16',
  `cate_id` int(11) DEFAULT '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL DEFAULT 'all',
  `start_coupon_rate` int(11) NOT NULL DEFAULT '100',
  `end_coupon_rate` int(11) NOT NULL DEFAULT '10000',
  `start_commissionRate` int(11) NOT NULL DEFAULT '1000',
  `end_commissionRate` int(11) NOT NULL DEFAULT '9000',
  `start_credit` varchar(50) NOT NULL DEFAULT '1heart',
  `end_credit` varchar(50) NOT NULL DEFAULT '5goldencrown',
  `start_price` decimal(8,2) DEFAULT '0.00',
  `end_price` decimal(8,2) DEFAULT '999.00',
  `start_volume` int(11) NOT NULL DEFAULT '0',
  `end_volume` int(11) NOT NULL DEFAULT '999999',
  `ems` int(11) DEFAULT '0' COMMENT '采集包邮',
  `recid` int(11) DEFAULT '1' COMMENT '是否更新分类',
  `page` int(11) NOT NULL DEFAULT '100' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` int(11) DEFAULT '1',
  `sort` varchar(50) NOT NULL DEFAULT 'total_sales_des',
  `last_page` int(11) DEFAULT '0' COMMENT '上次采集页数',
  `last_time` int(11) DEFAULT NULL,
  `http_mode` int(11) DEFAULT '0' COMMENT '采集模式',
  `tb_cid` int(11) DEFAULT NULL COMMENT '淘宝网分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_robots` values('1','时尚女装','女装','16','10','all','1000','9000','1000','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','1','1','total_sales_des','1','1479525292','0','0');");
E_D("replace into `yhxia_robots` values('2','精品男装','男装','50344007','11','all','1000','9000','1000','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','2','1','total_sales_des','5','1473726368','0','0');");
E_D("replace into `yhxia_robots` values('3','礼物礼品','礼物礼品','21','17','all','1000','9000','100','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','8','1','total_sales_des','5','1473726406','0','0');");
E_D("replace into `yhxia_robots` values('4','家用电器','家用电品','50067081','15','all','1000','9000','100','9999','1heart','5goldencrown','100.00','99999.00','10','99999','0','1','5','6','1','total_sales_des','5','1473726433','0','0');");
E_D("replace into `yhxia_robots` values('5','美食小吃','美食小吃','50010404','16','all','1000','9000','100','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','7','1','total_sales_des','5','1473726466','0','0');");
E_D("replace into `yhxia_robots` values('6','男士鞋包','男鞋包','50002766','13','all','1000','9000','100','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','4','1','total_sales_des','5','1473726492','0','0');");
E_D("replace into `yhxia_robots` values('7','女士鞋包','女鞋包','50008090','12','all','1000','9000','100','9999','1heart','5goldencrown','10.00','99999.00','10','99999','0','1','5','3','1','total_sales_des','5','1473726522','0','0');");
E_D("replace into `yhxia_robots` values('8','母婴用品','母婴用品','16','14','all','100','10000','100','9999','1heart','5goldencrown','10.00','888.00','10','99999','0','1','5','5','1','total_sales_des','5','1473726558','0','0');");

require("../../inc/footer.php");
?>