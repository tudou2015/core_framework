# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.25)
# Database: cfadmin
# Generation Time: 2019-05-21 02:32:16 +0000
# ************************************************************

# Dump of table cfadmin_headers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_headers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) NOT NULL COMMENT '头部名称',
  `url` varchar(255) NOT NULL COMMENT '头部URL',
  `create_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_at` int(10) unsigned NOT NULL COMMENT '修改时间',
  `active` tinyint(4) unsigned NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cfadmin_menus
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `parent` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单链接',
  `icon` char(255) DEFAULT NULL COMMENT '菜单图标',
  `create_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_at` int(11) unsigned NOT NULL COMMENT '更新时间',
  `active` tinyint(4) unsigned NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  KEY `com_index` (`active`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cfadmin_permissions
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `role_id` int(11) unsigned NOT NULL COMMENT '所属角色',
  `menu_id` int(11) unsigned NOT NULL COMMENT '所属菜单',
  `create_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_at` int(11) unsigned NOT NULL COMMENT '修改时间',
  `active` tinyint(4) unsigned NOT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`),
  KEY `com_index` (`active`,`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cfadmin_roles
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `is_admin` tinyint(4) unsigned NOT NULL COMMENT '管理员标志',
  `create_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_at` int(1) unsigned NOT NULL COMMENT '修改时间',
  `active` tinyint(4) unsigned NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cfadmin_tokens
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_tokens` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `name` varchar(255) NOT NULL COMMENT '用户名称',
  `token` varchar(255) NOT NULL COMMENT '用户TOKEN',
  `create_at` int(11) unsigned NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Dump of table cfadmin_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `cfadmin_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `username` varchar(255) NOT NULL COMMENT '用户账户',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `email` varchar(255) NOT NULL COMMENT '用户邮箱',
  `phone` bigint(11) unsigned NOT NULL COMMENT '用户手机',
  `role` int(11) unsigned NOT NULL COMMENT '用户角色',
  `create_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_at` int(11) unsigned NOT NULL COMMENT '修改时间',
  `active` tinyint(4) unsigned NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
