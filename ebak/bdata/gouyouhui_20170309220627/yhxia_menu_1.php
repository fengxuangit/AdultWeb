<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_menu`;");
E_C("CREATE TABLE `yhxia_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_menu` values('1','网站管理','0','setting','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('2','核心设置','1','setting','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('3','首页参数','151','setting','index','&type=site','','0','1','1');");
E_D("replace into `yhxia_menu` values('6','菜单管理','2','menu','index','','','0','4','1');");
E_D("replace into `yhxia_menu` values('7','新增','6','menu','add','','','0','0','0');");
E_D("replace into `yhxia_menu` values('8','编辑','6','menu','edit','','','0','0','0');");
E_D("replace into `yhxia_menu` values('9','删除','6','menu','delete','','','0','0','0');");
E_D("replace into `yhxia_menu` values('14','友情链接','288','link','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('15','友情链接','338','link','index','','','0','0','1');");
E_D("replace into `yhxia_menu` values('17','新增','15','link','add','','','0','0','0');");
E_D("replace into `yhxia_menu` values('18','编辑','15','link','edit','','','0','0','0');");
E_D("replace into `yhxia_menu` values('19','删除','15','link','delete','','','0','0','0');");
E_D("replace into `yhxia_menu` values('31','数据库管理','331','backup','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('32','数据备份','31','backup','index','','','0','0','1');");
E_D("replace into `yhxia_menu` values('33','数据恢复','31','backup','restore','','','0','0','1');");
E_D("replace into `yhxia_menu` values('34','清理缓存','2','cache','index','','','1','0','0');");
E_D("replace into `yhxia_menu` values('50','数据管理','0','content','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('51','商品管理','50','article','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('52','商品管理','51','items','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('54','编辑','52','article','edit','','','0','3','0');");
E_D("replace into `yhxia_menu` values('56','商品分类','292','items_cate','index','','','0','6','1');");
E_D("replace into `yhxia_menu` values('60','管理员管理','1','admin','index','','','0','3','1');");
E_D("replace into `yhxia_menu` values('61','管理员管理','60','admin','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('62','新增','61','admin','add','','','0','0','0');");
E_D("replace into `yhxia_menu` values('63','编辑','61','admin','edit','','','0','0','0');");
E_D("replace into `yhxia_menu` values('64','删除','61','admin','delete','','','0','0','0');");
E_D("replace into `yhxia_menu` values('65','分组管理','60','admin_role','index','','','0','2','1');");
E_D("replace into `yhxia_menu` values('66','新增','65','admin_role','add','','','0','0','0');");
E_D("replace into `yhxia_menu` values('347','优惠劵自动采集','164','youhunquancaiji','index','','','0','4','1');");
E_D("replace into `yhxia_menu` values('148','站点设置','2','setting','index','','','0','0','1');");
E_D("replace into `yhxia_menu` values('150','删除','149','user','delete','','','0','5','0');");
E_D("replace into `yhxia_menu` values('151','首页设置','1','nav','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('152','导航设置','151','nav','index','&type=main','','0','2','1');");
E_D("replace into `yhxia_menu` values('340','性能优化','2','setting','cache','','','0','3','1');");
E_D("replace into `yhxia_menu` values('164','商品采集','290','item_collect','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('275','站点设置','148','setting','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('277','商品管理','52','items','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('278','文章管理','155','article','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('282','SEO设置','2','seo','url','','','0','2','1');");
E_D("replace into `yhxia_menu` values('283','UR静态化','282','seo','url','','','0','255','1');");
E_D("replace into `yhxia_menu` values('284','页面SEO','282','seo','page','','','0','255','1');");
E_D("replace into `yhxia_menu` values('292','商品分类','50','fenlei','index','','','0','3','1');");
E_D("replace into `yhxia_menu` values('299','购优惠采集器','164','robots','index','','','0','3','1');");
E_D("replace into `yhxia_menu` values('300','添加采集器','299','robots','add','','','0','1','1');");
E_D("replace into `yhxia_menu` values('301','添加采集器','164','robots','add_do','','','0','2','1');");
E_D("replace into `yhxia_menu` values('302','清空数据','51','items','clear','','','0','4','1');");
E_D("replace into `yhxia_menu` values('305','过期商品','51','items','outtime','','','0','3','1');");
E_D("replace into `yhxia_menu` values('307','一键延时','51','items','key_addtime','','','0','5','1');");
E_D("replace into `yhxia_menu` values('249','添加商品','51','items','add','','','0','1','1');");
E_D("replace into `yhxia_menu` values('323','商品分类','249','items_cate','ajax_getchilds','','','0','255','0');");
E_D("replace into `yhxia_menu` values('324','一键获取商品','249','items','ajaxgetid','','','0','255','1');");
E_D("replace into `yhxia_menu` values('325','一键采集','299','robots','collect','&amp;auto=1','','0','2','0');");
E_D("replace into `yhxia_menu` values('327','商品有效期','164','setting','index','&amp;type=robot','','0','1','1');");
E_D("replace into `yhxia_menu` values('328','升级数据库','31','backup','upsql','','','0','255','1');");
E_D("replace into `yhxia_menu` values('338','站点其他设置','1','plugin','Link','','','0','255','1');");
E_D("replace into `yhxia_menu` values('342','特价采集','164','tejia','index','','','0','5','1');");
E_D("replace into `yhxia_menu` values('295','帮助文件','338','help','index','','','0','1','1');");
E_D("replace into `yhxia_menu` values('343','定向计划申请','164','youhundingxiang','index','','','0','255','1');");

require("../../inc/footer.php");
?>