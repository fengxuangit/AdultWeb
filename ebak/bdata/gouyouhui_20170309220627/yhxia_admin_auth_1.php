<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `yhxia_admin_auth`;");
E_C("CREATE TABLE `yhxia_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `yhxia_admin_auth` values('1','1');");
E_D("replace into `yhxia_admin_auth` values('1','2');");
E_D("replace into `yhxia_admin_auth` values('1','3');");
E_D("replace into `yhxia_admin_auth` values('1','4');");
E_D("replace into `yhxia_admin_auth` values('1','6');");
E_D("replace into `yhxia_admin_auth` values('1','7');");
E_D("replace into `yhxia_admin_auth` values('1','8');");
E_D("replace into `yhxia_admin_auth` values('1','9');");
E_D("replace into `yhxia_admin_auth` values('1','10');");
E_D("replace into `yhxia_admin_auth` values('1','11');");
E_D("replace into `yhxia_admin_auth` values('1','12');");
E_D("replace into `yhxia_admin_auth` values('1','13');");
E_D("replace into `yhxia_admin_auth` values('1','14');");
E_D("replace into `yhxia_admin_auth` values('1','15');");
E_D("replace into `yhxia_admin_auth` values('1','17');");
E_D("replace into `yhxia_admin_auth` values('1','18');");
E_D("replace into `yhxia_admin_auth` values('1','19');");
E_D("replace into `yhxia_admin_auth` values('1','23');");
E_D("replace into `yhxia_admin_auth` values('1','24');");
E_D("replace into `yhxia_admin_auth` values('1','25');");
E_D("replace into `yhxia_admin_auth` values('1','26');");
E_D("replace into `yhxia_admin_auth` values('1','27');");
E_D("replace into `yhxia_admin_auth` values('1','28');");
E_D("replace into `yhxia_admin_auth` values('1','31');");
E_D("replace into `yhxia_admin_auth` values('1','32');");
E_D("replace into `yhxia_admin_auth` values('1','33');");
E_D("replace into `yhxia_admin_auth` values('1','34');");
E_D("replace into `yhxia_admin_auth` values('1','36');");
E_D("replace into `yhxia_admin_auth` values('1','37');");
E_D("replace into `yhxia_admin_auth` values('1','38');");
E_D("replace into `yhxia_admin_auth` values('1','50');");
E_D("replace into `yhxia_admin_auth` values('1','51');");
E_D("replace into `yhxia_admin_auth` values('1','52');");
E_D("replace into `yhxia_admin_auth` values('1','54');");
E_D("replace into `yhxia_admin_auth` values('1','56');");
E_D("replace into `yhxia_admin_auth` values('1','57');");
E_D("replace into `yhxia_admin_auth` values('1','58');");
E_D("replace into `yhxia_admin_auth` values('1','59');");
E_D("replace into `yhxia_admin_auth` values('1','60');");
E_D("replace into `yhxia_admin_auth` values('1','61');");
E_D("replace into `yhxia_admin_auth` values('1','62');");
E_D("replace into `yhxia_admin_auth` values('1','63');");
E_D("replace into `yhxia_admin_auth` values('1','64');");
E_D("replace into `yhxia_admin_auth` values('1','65');");
E_D("replace into `yhxia_admin_auth` values('1','66');");
E_D("replace into `yhxia_admin_auth` values('1','70');");
E_D("replace into `yhxia_admin_auth` values('1','117');");
E_D("replace into `yhxia_admin_auth` values('1','118');");
E_D("replace into `yhxia_admin_auth` values('1','119');");
E_D("replace into `yhxia_admin_auth` values('1','148');");
E_D("replace into `yhxia_admin_auth` values('1','149');");
E_D("replace into `yhxia_admin_auth` values('1','150');");
E_D("replace into `yhxia_admin_auth` values('1','151');");
E_D("replace into `yhxia_admin_auth` values('1','152');");
E_D("replace into `yhxia_admin_auth` values('1','153');");
E_D("replace into `yhxia_admin_auth` values('1','154');");
E_D("replace into `yhxia_admin_auth` values('1','155');");
E_D("replace into `yhxia_admin_auth` values('1','156');");
E_D("replace into `yhxia_admin_auth` values('1','157');");
E_D("replace into `yhxia_admin_auth` values('1','158');");
E_D("replace into `yhxia_admin_auth` values('1','159');");
E_D("replace into `yhxia_admin_auth` values('1','160');");
E_D("replace into `yhxia_admin_auth` values('1','161');");
E_D("replace into `yhxia_admin_auth` values('1','162');");
E_D("replace into `yhxia_admin_auth` values('1','164');");
E_D("replace into `yhxia_admin_auth` values('1','181');");
E_D("replace into `yhxia_admin_auth` values('1','185');");
E_D("replace into `yhxia_admin_auth` values('1','186');");
E_D("replace into `yhxia_admin_auth` values('1','187');");
E_D("replace into `yhxia_admin_auth` values('1','190');");
E_D("replace into `yhxia_admin_auth` values('1','195');");
E_D("replace into `yhxia_admin_auth` values('1','199');");
E_D("replace into `yhxia_admin_auth` values('1','200');");
E_D("replace into `yhxia_admin_auth` values('1','201');");
E_D("replace into `yhxia_admin_auth` values('1','202');");
E_D("replace into `yhxia_admin_auth` values('1','203');");
E_D("replace into `yhxia_admin_auth` values('1','216');");
E_D("replace into `yhxia_admin_auth` values('1','232');");
E_D("replace into `yhxia_admin_auth` values('1','233');");
E_D("replace into `yhxia_admin_auth` values('1','234');");
E_D("replace into `yhxia_admin_auth` values('1','235');");
E_D("replace into `yhxia_admin_auth` values('1','236');");
E_D("replace into `yhxia_admin_auth` values('1','237');");
E_D("replace into `yhxia_admin_auth` values('1','238');");
E_D("replace into `yhxia_admin_auth` values('1','240');");
E_D("replace into `yhxia_admin_auth` values('1','242');");
E_D("replace into `yhxia_admin_auth` values('1','245');");
E_D("replace into `yhxia_admin_auth` values('1','249');");
E_D("replace into `yhxia_admin_auth` values('1','250');");
E_D("replace into `yhxia_admin_auth` values('1','256');");
E_D("replace into `yhxia_admin_auth` values('1','257');");
E_D("replace into `yhxia_admin_auth` values('1','258');");
E_D("replace into `yhxia_admin_auth` values('1','259');");
E_D("replace into `yhxia_admin_auth` values('1','260');");
E_D("replace into `yhxia_admin_auth` values('1','261');");
E_D("replace into `yhxia_admin_auth` values('1','262');");
E_D("replace into `yhxia_admin_auth` values('1','263');");
E_D("replace into `yhxia_admin_auth` values('1','264');");
E_D("replace into `yhxia_admin_auth` values('1','265');");
E_D("replace into `yhxia_admin_auth` values('1','269');");
E_D("replace into `yhxia_admin_auth` values('1','270');");
E_D("replace into `yhxia_admin_auth` values('1','271');");
E_D("replace into `yhxia_admin_auth` values('1','274');");
E_D("replace into `yhxia_admin_auth` values('1','275');");
E_D("replace into `yhxia_admin_auth` values('1','276');");
E_D("replace into `yhxia_admin_auth` values('1','277');");
E_D("replace into `yhxia_admin_auth` values('1','278');");
E_D("replace into `yhxia_admin_auth` values('1','279');");
E_D("replace into `yhxia_admin_auth` values('1','280');");
E_D("replace into `yhxia_admin_auth` values('1','281');");
E_D("replace into `yhxia_admin_auth` values('1','282');");
E_D("replace into `yhxia_admin_auth` values('1','283');");
E_D("replace into `yhxia_admin_auth` values('1','284');");
E_D("replace into `yhxia_admin_auth` values('1','286');");
E_D("replace into `yhxia_admin_auth` values('1','287');");
E_D("replace into `yhxia_admin_auth` values('1','288');");
E_D("replace into `yhxia_admin_auth` values('1','289');");
E_D("replace into `yhxia_admin_auth` values('1','290');");
E_D("replace into `yhxia_admin_auth` values('1','291');");

require("../../inc/footer.php");
?>