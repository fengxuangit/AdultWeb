<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_setting`;");
E_C("CREATE TABLE `yhxia_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_setting` values('site_name','找优惠，就购了，锦尚中国源码论坛','');");
E_D("replace into `yhxia_setting` values('site_url','http://demo.52jscn.com/','');");
E_D("replace into `yhxia_setting` values('headerm_html','http://demo.52jscn.com/?g=m','');");
E_D("replace into `yhxia_setting` values('site_icp','','');");
E_D("replace into `yhxia_setting` values('qq','','');");
E_D("replace into `yhxia_setting` values('robots_key','','');");
E_D("replace into `yhxia_setting` values('app_kehuduan','/static/gouyouhui.apk','');");
E_D("replace into `yhxia_setting` values('dingdan','','');");
E_D("replace into `yhxia_setting` values('statistics_code','','');");
E_D("replace into `yhxia_setting` values('taojindian_html','<script type=\"text/javascript\">\r\n    (function(win,doc){\r\n        var s = doc.createElement(\"script\"), h = doc.getElementsByTagName(\"head\")[0];\r\n        if (!win.alimamatk_show) {\r\n            s.charset = \"gbk\";\r\n            s.async = true;\r\n            s.src = \"http://a.alimama.cn/tkapi.js\";\r\n            h.insertBefore(s, h.firstChild);\r\n        };\r\n        var o = {\r\n            pid: \"mm_50307243_19026969_66604643\",/*推广单元ID，用于区分不同的推广渠道*/\r\n            appkey: \"\",/*通过TOP平台申请的appkey，设置后引导成交会关联appkey*/\r\n            unid: \"\",/*自定义统计字段*/\r\n            type: \"click\" /* click 组件的入口标志 （使用click组件必设）*/\r\n        };\r\n        win.alimamatk_onload = win.alimamatk_onload || [];\r\n        win.alimamatk_onload.push(o);\r\n    })(window,document);\r\n</script>\r\n','');");
E_D("replace into `yhxia_setting` values('ipban_switch','0','');");
E_D("replace into `yhxia_setting` values('site_status','1','');");
E_D("replace into `yhxia_setting` values('closed_reason','网站升级中。。','');");
E_D("replace into `yhxia_setting` values('index_page_size','80','');");
E_D("replace into `yhxia_setting` values('index_not_text','','');");
E_D("replace into `yhxia_setting` values('index_cids','a:9:{i:0;s:1:\"2\";i:1;s:1:\"9\";i:2;s:1:\"1\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";i:7;s:1:\"7\";i:8;s:1:\"8\";}','');");
E_D("replace into `yhxia_setting` values('index_sort','id  desc','');");
E_D("replace into `yhxia_setting` values('index_shop_type','','');");
E_D("replace into `yhxia_setting` values('index_mix_price','0','');");
E_D("replace into `yhxia_setting` values('index_max_price','9999999','');");
E_D("replace into `yhxia_setting` values('index_mix_volume','0','');");
E_D("replace into `yhxia_setting` values('index_max_volume','9999999','');");
E_D("replace into `yhxia_setting` values('wait_time','0','');");
E_D("replace into `yhxia_setting` values('end_time','1','');");
E_D("replace into `yhxia_setting` values('index_ems','0','');");
E_D("replace into `yhxia_setting` values('dn_item_desc','0','');");
E_D("replace into `yhxia_setting` values('sj_item_desc','0','');");
E_D("replace into `yhxia_setting` values('seo_config','a:8:{s:5:\"index\";a:3:{s:5:\"title\";s:89:\"{site_name} - 优惠券商品,内部价,全场超值优惠,淘宝天猫精选好货专享\";s:8:\"keywords\";s:90:\"优惠券商品,秒杀网,19.9包邮,十九块九包邮,十九块邮独享,淘宝九块邮\";s:11:\"description\";s:115:\"汇集全网优惠券商品，每天实时更新，9.9包邮，19.9元包邮等。要了解更多不妨来看看。\";}s:4:\"cate\";a:3:{s:5:\"title\";s:95:\"{cate_name}专区 - 优惠券商品,内部价,全场超值优惠,淘宝天猫精选好货专享\";s:8:\"keywords\";s:86:\"{cate_name},秒杀网,19.9包邮,十九块九包邮,十九块邮独享,淘宝九块邮\";s:11:\"description\";s:115:\"汇集全网优惠券商品，每天实时更新，9.9包邮，19.9元包邮等。要了解更多不妨来看看。\";}s:4:\"item\";a:3:{s:5:\"title\";s:74:\"{title} 原价{price}元 现价{coupon_price}元包邮抢购 - {site_name}\";s:8:\"keywords\";s:6:\"{tags}\";s:11:\"description\";s:7:\"{intro}\";}s:6:\"xinpin\";a:3:{s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:3:\"jiu\";a:3:{s:5:\"title\";s:103:\"九块九包邮专区 - 9.9包邮，独享10元下优惠券商品给你带来的小幸福 - {site_name}\";s:8:\"keywords\";s:48:\"九块九,9.9包邮,超值优惠,优惠券商品\";s:11:\"description\";s:56:\"独享10元下优惠券商品给你带来的小幸福。\";}s:5:\"ershi\";a:3:{s:5:\"title\";s:105:\"二十元封顶专区 - 20块包邮，专享20元下优惠券商品给你带来的小幸福 - {site_name}\";s:8:\"keywords\";s:56:\"二十元封顶,20块包邮,超值优惠,优惠券商品\";s:11:\"description\";s:56:\"专享20元下优惠券商品给你带来的小幸福。\";}s:8:\"jingxuan\";a:3:{s:5:\"title\";s:101:\"特卖精选专区 - 精挑细选|品质优先|实时更新|精选特卖商品不断货 - {site_name}\";s:8:\"keywords\";s:51:\"精挑细选,优质商品,特价好货,好货秒杀\";s:11:\"description\";s:75:\"精挑细选，品质优先，实时更新，精选特卖商品不断货。\";}s:6:\"top100\";a:3:{s:5:\"title\";s:107:\"优惠券商品人气榜 - 热卖商品，大家都在买什么，超级人气榜来告诉你 - {site_name}\";s:8:\"keywords\";s:57:\"热销排行榜,热门商品,大家都在买什么,热卖\";s:11:\"description\";s:54:\"大家都在买什么，超级人气榜来告诉你。\";}}','');");
E_D("replace into `yhxia_setting` values('site_cache','0','');");
E_D("replace into `yhxia_setting` values('site_cachepath','','');");
E_D("replace into `yhxia_setting` values('site_cachetime','3600','');");
E_D("replace into `yhxia_setting` values('item_hit','1','');");
E_D("replace into `yhxia_setting` values('coupon_add_time','840','');");
E_D("replace into `yhxia_setting` values('index_admin','admin','');");
E_D("replace into `yhxia_setting` values('youhun_secret','','');");
E_D("replace into `yhxia_setting` values('site_secret','','');");
E_D("replace into `yhxia_setting` values('cookie','','');");

require("../../inc/footer.php");
?>