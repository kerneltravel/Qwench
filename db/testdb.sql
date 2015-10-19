# Host: localhost  (Version: 5.5.40)
# Date: 2015-10-19 20:38:37
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "activities"
#

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `activity` varchar(255) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activityid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "activities"
#

/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;

#
# Structure for table "answers"
#

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionid` int(10) unsigned NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(10) unsigned NOT NULL,
  `accepted` int(10) unsigned NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "answers"
#

/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;

#
# Structure for table "answers_votes"
#

DROP TABLE IF EXISTS `answers_votes`;
CREATE TABLE `answers_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answerid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "answers_votes"
#

/*!40000 ALTER TABLE `answers_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers_votes` ENABLE KEYS */;

#
# Structure for table "comments"
#

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `comment` text CHARACTER SET latin1 NOT NULL,
  `votes` int(10) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(10) unsigned NOT NULL,
  `typeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "comments"
#

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

#
# Structure for table "comments_votes"
#

DROP TABLE IF EXISTS `comments_votes`;
CREATE TABLE `comments_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "comments_votes"
#

/*!40000 ALTER TABLE `comments_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_votes` ENABLE KEYS */;

#
# Structure for table "favorites"
#

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "favorites"
#

/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;

#
# Structure for table "osa_menu_url"
#

DROP TABLE IF EXISTS `osa_menu_url`;
CREATE TABLE `osa_menu_url` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `is_show` tinyint(4) NOT NULL COMMENT '是否在sidebar里出现',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '在线状态，还是下线状态，即可用，不可用。',
  `shortcut_allowed` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许快捷访问',
  `menu_desc` varchar(255) DEFAULT NULL,
  `father_menu` int(11) NOT NULL DEFAULT '0' COMMENT '上一级菜单',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_url` (`menu_url`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='功能链接（菜单链接）';

#
# Data for table "osa_menu_url"
#

INSERT INTO `osa_menu_url` VALUES (1,'首页','/panel/index.php',1,0,1,1,'后台首页',0),(2,'账号列表','/panel/users.php',1,1,1,1,'账号列表',0),(3,'修改账号','/panel/user_modify.php',1,0,1,0,'修改账号',2),(4,'新建账号','/panel/user_add.php',1,0,1,1,'新建账号',2),(5,'个人信息','/panel/profile.php',1,0,1,1,'个人信息',0),(6,'账号组成员','/panel/group.php',1,0,1,0,'显示账号组详情及该组成员',7),(7,'账号组管理','/panel/groups.php',1,1,1,1,'增加管理员',0),(8,'修改账号组','/panel/group_modify.php',1,0,1,0,'修改账号组',7),(9,'新建账号组','/panel/group_add.php',1,0,1,1,'新建账号组',7),(10,'权限管理','/panel/group_role.php',1,1,1,1,'用户权限依赖于账号组的权限',0),(11,'菜单模块','/panel/modules.php',1,1,1,1,'菜单里的模块',0),(12,'编辑菜单模块','/panel/module_modify.php',1,0,1,0,'编辑模块',11),(13,'添加菜单模块','/panel/module_add.php',1,0,1,1,'添加菜单模块',11),(14,'功能列表','/panel/menus.php',1,1,1,1,'菜单功能及可访问的链接',0),(15,'增加功能','/panel/menu_add.php',1,0,1,1,'增加功能',14),(16,'功能修改','/panel/menu_modify.php',1,0,1,0,'修改功能',14),(17,'设置模板','/panel/set.php',1,0,1,1,'设置模板',0),(18,'便签管理','/panel/quicknotes.php',1,1,1,1,'quick note',0),(19,'菜单链接列表','/panel/module.php',1,0,1,0,'显示模块详情及该模块下的菜单',11),(20,'登入','/login.php',1,0,1,1,'登入页面',0),(21,'操作记录','/panel/syslog.php',1,1,1,1,'用户操作的历史行为',0),(22,'系统信息','/panel/system.php',1,1,1,1,'显示系统相关信息',0),(23,'ajax访问修改快捷菜单','/ajax/shortcut.php',1,0,1,0,'ajax请求',0),(24,'添加便签','/panel/quicknote_add.php',1,0,1,1,'添加quicknote的内容',18),(25,'修改便签','/panel/quicknote_modify.php',1,0,1,0,'修改quicknote的内容',18),(26,'系统设置','/panel/setting.php',1,0,1,0,'系统设置',0),(101,'样例','/sample/sample.php',2,1,1,1,'',0),(103,'读取XLS文件','/sample/read_excel.php',2,1,1,1,'',0);

#
# Structure for table "osa_module"
#

DROP TABLE IF EXISTS `osa_module`;
CREATE TABLE `osa_module` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_url` varchar(128) NOT NULL,
  `module_sort` int(11) unsigned NOT NULL DEFAULT '1',
  `module_desc` varchar(255) DEFAULT NULL,
  `module_icon` varchar(32) DEFAULT 'icon-th' COMMENT '菜单模块图标',
  `online` int(11) NOT NULL DEFAULT '1' COMMENT '模块是否在线',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='菜单模块';

#
# Data for table "osa_module"
#

INSERT INTO `osa_module` VALUES (1,'控制面板','/panel/index.php',0,'配置OSAdmin的相关功能','icon-th',1),(2,'样例模块','/panel/index.php',1,'样例模块','icon-leaf',1);

#
# Structure for table "osa_quick_note"
#

DROP TABLE IF EXISTS `osa_quick_note`;
CREATE TABLE `osa_quick_note` (
  `note_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'note_id',
  `note_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `owner_id` int(10) unsigned NOT NULL COMMENT '谁添加的',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用于显示的quick note';

#
# Data for table "osa_quick_note"
#

INSERT INTO `osa_quick_note` VALUES (6,'孔子说：万能的不是神，是程序员！',1),(7,'听说飞信被渗透了几百台服务器',1),(8,'（yamete）＝不要 ，一般音译为”亚美爹”，正确发音是：亚灭贴',1),(9,'（kimochiii）＝爽死了，一般音译为”可莫其”，正确发音是：克一莫其一一 ',1),(10,'（itai）＝疼 ，一般音译为以太',1),(11,'（iku）＝要出来了 ，一般音译为一库',1),(12,'（soko dame）＝那里……不可以 一般音译：锁扩，打灭',1),(13,'(hatsukashi)＝羞死人了 ，音译：哈次卡西',1),(14,'（atashinookuni）＝到人家的身体里了，音译：啊她西诺喔库你',1),(15,'（mottto mottto）＝还要，还要，再大力点的意思 音译：毛掏 毛掏',1),(20,'这是一条含HTML的便签 <a href=\"http://www.osadmin.org\">osadmin.org</a>',1),(23,'你造吗？quick note可以关掉的，在右上角的我的账号里可以设置的。',1),(24,'你造吗？“功能”其实就是“链接”啦啦，权限控制是根据用户访问的链接来验证的。',1),(25,'你造吗？权限是赋予给账号组的，账号组下的用户拥有相同的权限。',1),(26,'Hi，你注意到navibar上的+号和-号了吗？',1),(27,'假如世界上只剩下两坨屎，我一定会把热的留给你',1),(28,'你造吗？这页面设计用是bootstrap模板改的',1),(29,'你造吗？这全部都是我一个人开发的，可特么累了',1),(30,'客官有什么建议可以直接在weibo.com上<a target=_blank  href =\"http://weibo.com/osadmin\">@OSAdmin官网</a> 本店服务一定会让客官满意的！亚美爹！',1);

#
# Structure for table "osa_sys_log"
#

DROP TABLE IF EXISTS `osa_sys_log`;
CREATE TABLE `osa_sys_log` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL,
  `action` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL COMMENT '操作了哪个类的对象',
  `class_obj` varchar(32) NOT NULL COMMENT '操作的对象是谁，可能为对象的ID',
  `result` text NOT NULL COMMENT '操作的结果',
  `op_time` int(11) NOT NULL,
  PRIMARY KEY (`op_id`),
  KEY `op_time` (`op_time`),
  KEY `class_name` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

#
# Data for table "osa_sys_log"
#

INSERT INTO `osa_sys_log` VALUES (1,'admin','LOGIN','User','1','{\"IP\":\"127.0.0.1\"}',1445223584);

#
# Structure for table "osa_system"
#

DROP TABLE IF EXISTS `osa_system`;
CREATE TABLE `osa_system` (
  `key_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `key_value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统配置表';

#
# Data for table "osa_system"
#

INSERT INTO `osa_system` VALUES ('timezone','\"Asia/Shanghai\"');

#
# Structure for table "osa_user"
#

DROP TABLE IF EXISTS `osa_user`;
CREATE TABLE `osa_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_ip` varchar(32) DEFAULT NULL,
  `user_group` int(11) NOT NULL,
  `template` varchar(32) NOT NULL DEFAULT 'default' COMMENT '主题模板',
  `shortcuts` text COMMENT '快捷菜单',
  `show_quicknote` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示quicknote',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='后台用户';

#
# Data for table "osa_user"
#

INSERT INTO `osa_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','SomewhereYu','13800138001','admin@osadmin.org','初始的超级管理员!',1445223584,1,'127.0.0.1',1,'wintertide','2,7,10,11,13,14,18,21,24',0),(26,'demo','e10adc3949ba59abbe56e057f20f883e','SomewhereYu','15812345678','yuwenqi@osadmin.org','默认用户组成员',1371605873,1,'127.0.0.1',2,'schoolpainting','',1);

#
# Structure for table "osa_user_group"
#

DROP TABLE IF EXISTS `osa_user_group`;
CREATE TABLE `osa_user_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(32) DEFAULT NULL,
  `group_role` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '初始权限为1,5,17,18,22,23,24,25',
  `owner_id` int(11) DEFAULT NULL COMMENT '创建人ID',
  `group_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='账号组';

#
# Data for table "osa_user_group"
#

INSERT INTO `osa_user_group` VALUES (1,'超级管理员组','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,101,103',1,'万能的不是神，是程序员'),(2,'默认账号组','1,5,17,18,20,22,23,24,25,101',1,'默认账号组');

#
# Structure for table "questions"
#

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link` text NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `linkcache` longtext NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  `accepted` int(10) unsigned NOT NULL DEFAULT '0',
  `answers` int(10) unsigned NOT NULL DEFAULT '0',
  `kb` int(10) unsigned NOT NULL DEFAULT '0',
  `slug` text NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "questions"
#

/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'83 - Column &#39;thema&#39; cannot be part of FULLTEXT index 鍏朵粬鐨勭紪鐮侀兘鏁寸悊鎴','83 - Column \'thema\' cannot be part of FULLTEXT index 鍏朵粬鐨勭紪鐮侀兘鏁寸悊鎴','2015-10-19 16:59:33','2015-10-19 16:59:33','',1,'',0,0,0,0,'83---column-39thema39-cannot-be-part-of-fulltext-index-'),(3,'鎺ヤ笅鏉ョ殑绀轰緥婕旂ず浜嗗湪涓?釜鎺у埗鍣ㄧ殑鍔ㄤ綔涓??浣曟竻鐞嗗姩浣滅殑鍙傛暟','鎺ヤ笅鏉ョ殑绀轰緥婕旂ず浜嗗湪涓?釜鎺у埗鍣ㄧ殑鍔ㄤ綔涓??浣曟竻鐞嗗姩浣滅殑鍙傛暟','2015-10-19 17:01:23','2015-10-19 17:01:23','',1,'',0,0,0,0,''),(4,'浠ヨ繘琛屽垹闄ゆ垨鑰呬慨鏀硅緭鍏ユ暟鎹?互婊¤冻鎴戜滑闇??鐨勬牸寮忕殑杩囨护鍣','浠ヨ繘琛屽垹闄ゆ垨鑰呬慨鏀硅緭鍏ユ暟鎹?互婊¤冻鎴戜滑闇??鐨勬牸寮忕殑杩囨护鍣','2015-10-19 17:02:34','2015-10-19 17:02:34','',1,'',0,0,0,0,''),(5,'js浠ｇ爜鎻愮ず鐨勫?寮猴紝鐐逛綘鎵?兂js浠ｇ爜鎻愮ず鐨勫?寮猴紝鐐逛綘鎵?兂','WeX5 V3.2.1 姝ｅ紡鐗堝彂甯冿紝鏇存柊鍐呭?濡備笅锛?\n\r\nWeX5璺ㄧ?绉诲姩寮?彂妗嗘灦V3.2.1 姝ｅ紡鐗堬紙2015-10-19锛?        寮?彂鐗堝強瑙嗛?涓嬭浇               \r\n        鏂板?鐗规?锛?\n        1. 鎵撳寘鏈嶅姟鐨勯噸鏋勶紝鏇存柟渚跨殑璇佷功绠＄悊鍜屽弬鏁拌?缃?紱\r\n        2. 鏀?寔app搴旂敤鐨勬洿鏂帮紱浣跨敤璇存槑\r\n        3. 鏀?寔app鎵撳寘鍚庣殑椤甸潰璧勬簮鏇存柊锛?浣跨敤璇存槑\r\n        4. 鎻愪緵浠块?鐗涘墠绔?殑妗堜緥锛?\n        5. 鍐呯疆chrome娴忚?鍣?紝宸茬粡鍐呯疆澧炲己鍨嬫祻瑙堝櫒锛坈hrome42锛夛紝android4.4(chrome30, chrome33), android5(chrom39)鐨勭湡鏈鸿皟璇曡祫婧愶紝鍙?互涓嶇炕澧欒皟璇昦ndroid锛屽?鏋滃叾瀹冪増鏈?殑锛岃?绗?竴娆¤皟璇曟椂缈诲?锛?\n        6. 澶栧崠闆嗘垚浜嗘瀬鍏夋帹閫侊紱\r\n        7. js浠ｇ爜鎻愮ず鐨勫?寮猴紝鐐逛綘鎵?兂锛?\n        8. 鍘婚櫎妯℃嫙杩愯?妯″紡銆俇I璋冭瘯鎺ㄨ崘鐢ㄦ祻瑙堝櫒杩愯?锛屾湰鍦颁唬鐮佽皟璇曟帹鑽愮湡鏈恒?ios妯℃嫙鍣?xcode鑷?甫)鎴朅ndroid妯℃嫙鍣?紙渚嬪?澶滅?绛夛級锛?\n        9. 澧炲姞list(UL)銆乴ist(Table)缁勪欢锛?\n        10. 澧炲姞printHtml缁勪欢锛?\n        11. 椤甸潰涔嬮棿鏍峰紡闅旂?锛屼笉浼氱浉浜掑共鎵帮紱\r\n        12. 涓嬫媺涓婃媺浣撻獙澧炲己锛屾粦鍔ㄥ埌搴曢儴鑷?姩鍔犺浇鏇村?锛?\n        13. 渚ц竟鏍忔粦鍔ㄧ殑澧炲己锛?\n        14. dialog缁勪欢鏀?寔鎷栨嫿鏀惧ぇ缂╁皬鑳藉姏锛?\n        15. 缁勪欢set(name,val)鏀?寔锛?\n        16. 鎻愪緵鍗曢〉搴旂敤锛圫PA锛夌殑澶栧３锛坰hell锛夌殑鏍稿績瀹炵幇锛屾敮鎸侀〉鐨勬墦寮??鍏抽棴銆佽矾鐢辩瓑锛?\n        17. 鍙?柟渚垮湴瀹炵幇鍗曢〉搴旂敤鐨勫悇绉嶉棬鎴峰拰棣栭〉锛岀患鍚堟紨绀烘?渚嬪拰閫旂墰妗堜緥閲囩敤shell瀹炵幇锛?\n        18. 澧炲姞瑙︽懜鎵嬪娍妗堜緥锛堟瘮濡傝?婊戝姩鍒犻櫎銆佸弻鎸囨斁澶х缉灏忋?鎷栧姩绛夛紝閲囩敤鐧惧害鐨則ouch.js锛夛紝鍙傝?婕旂ず妗堜緥涓嬬殑touchjs鍔熻兘銆','2015-10-19 17:22:23','2015-10-19 17:22:23','',1,'',0,0,0,0,'jsjs'),(6,'涓嬫媺涓婃媺浣撻獙澧炲己锛屾粦鍔ㄥ埌搴曢儴鑷?姩鍔犺浇鏇村?锛','WeX5 V3.2.1 姝ｅ紡鐗堝彂甯冿紝鏇存柊鍐呭?濡備笅锛?\n WeX5璺ㄧ?绉诲姩寮?彂妗嗘灦V3.2.1 姝ｅ紡鐗堬紙2015-10-19锛?        寮?彂鐗堝強瑙嗛?涓嬭浇                        鏂板?鐗规?锛?\n        1. 鎵撳寘鏈嶅姟鐨勯噸鏋勶紝鏇存柟渚跨殑璇佷功绠＄悊鍜屽弬鏁拌?缃?紱         2. 鏀?寔app搴旂敤鐨勬洿鏂帮紱浣跨敤璇存槑         3. 鏀?寔app鎵撳寘鍚庣殑椤甸潰璧勬簮鏇存柊锛?浣跨敤璇存槑         4. 鎻愪緵浠块?鐗涘墠绔?殑妗堜緥锛?\n        5. 鍐呯疆chrome娴忚?鍣?紝宸茬粡鍐呯疆澧炲己鍨嬫祻瑙堝櫒锛坈hrome42锛夛紝android4.4(chrome30, chrome33), android5(chrom39)鐨勭湡鏈鸿皟璇曡祫婧愶紝鍙?互涓嶇炕澧欒皟璇昦ndroid锛屽?鏋滃叾瀹冪増鏈?殑锛岃?绗?竴娆¤皟璇曟椂缈诲?锛?\n        6. 澶栧崠闆嗘垚浜嗘瀬鍏夋帹閫侊紱         7. js浠ｇ爜鎻愮ず鐨勫?寮猴紝鐐逛綘鎵?兂锛?\n        8. 鍘婚櫎妯℃嫙杩愯?妯″紡銆俇I璋冭瘯鎺ㄨ崘鐢ㄦ祻瑙堝櫒杩愯?锛屾湰鍦颁唬鐮佽皟璇曟帹鑽愮湡鏈恒?ios妯℃嫙鍣?xcode鑷?甫)鎴朅ndroid妯℃嫙鍣?紙渚嬪?澶滅?绛夛級锛?\n        9. 澧炲姞list(UL)銆乴ist(Table)缁勪欢锛?\n        10. 澧炲姞printHtml缁勪欢锛?\n        11. 椤甸潰涔嬮棿鏍峰紡闅旂?锛屼笉浼氱浉浜掑共鎵帮紱         12. 涓嬫媺涓婃媺浣撻獙澧炲己锛屾粦鍔ㄥ埌搴曢儴鑷?姩鍔犺浇鏇村?锛?\n        13. 渚ц竟鏍忔粦鍔ㄧ殑澧炲己锛?\n        14. dialog缁勪欢鏀?寔鎷栨嫿鏀惧ぇ缂╁皬鑳藉姏锛?\n        15. 缁勪欢set(name,val)鏀?寔锛?\n        16. 鎻愪緵鍗曢〉搴旂敤锛圫PA锛夌殑澶栧３锛坰hell锛夌殑鏍稿績瀹炵幇锛屾敮鎸侀〉鐨勬墦寮??鍏抽棴銆佽矾鐢辩瓑锛?\n        17. 鍙?柟渚垮湴瀹炵幇鍗曢〉搴旂敤鐨勫悇绉嶉棬鎴峰拰棣栭〉锛岀患鍚堟紨绀烘?渚嬪拰閫旂墰妗堜緥閲囩敤shell瀹炵幇锛?\n        18. 澧炲姞瑙︽懜鎵嬪娍妗堜緥锛堟瘮濡傝?婊戝姩鍒犻櫎銆佸弻鎸囨斁澶х缉灏忋?鎷栧姩绛夛紝閲囩敤鐧惧害鐨則ouch.js锛夛紝鍙傝?婕旂ず妗堜緥涓嬬殑touchjs鍔熻兘銆','2015-10-19 17:25:55','2015-10-19 17:25:55','',1,'',0,0,0,0,'');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

#
# Structure for table "questions_votes"
#

DROP TABLE IF EXISTS `questions_votes`;
CREATE TABLE `questions_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "questions_votes"
#

/*!40000 ALTER TABLE `questions_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_votes` ENABLE KEYS */;

#
# Structure for table "tags"
#

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "tags"
#

/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'ceshi');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

#
# Structure for table "tags_questions"
#

DROP TABLE IF EXISTS `tags_questions`;
CREATE TABLE `tags_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "tags_questions"
#

/*!40000 ALTER TABLE `tags_questions` DISABLE KEYS */;
INSERT INTO `tags_questions` VALUES (1,1,1);
/*!40000 ALTER TABLE `tags_questions` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `moderator` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `lastactivity` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'182cbf0cc28c474229ed263263aabcc33aca1ead','admin','testmail@qq.com',1,0,'2015-10-19 15:29:58','2015-10-19 15:29:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
