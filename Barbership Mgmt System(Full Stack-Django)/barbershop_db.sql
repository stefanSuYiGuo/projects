-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- host： 127.0.0.1
-- create date： 2020-05-02 06:41:38
-- server version： 10.4.11-MariaDB
-- PHP version： 7.4.2

DROP TABLE IF EXISTS auth_group;
DROP TABLE IF EXISTS auth_group_permissions;
DROP TABLE IF EXISTS suth_permission;
DROP TABLE IF EXISTS auth_user;
DROP TABLE IF EXISTS auth_user_groups;
DROP TABLE IF EXISTS auth_user_user_permissions;
DROP TABLE IF EXISTS django_admin_log;
DROP TABLE IF EXISTS django_content_type;
DROP TABLE IF EXISTS django_migrations;
DROP TABLE IF EXISTS django_session;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS reserve;
DROP TABLE IF EXISTS billing;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS performance;

DROP FUNCTION IF EXISTS rand_string;
DROP FUNCTION IF EXISTS rand_num;
DROP FUNCTION IF EXISTS generate_email;
DROP FUNCTION IF EXISTS generatePhone;
DROP FUNCTION IF EXISTS rand_stringAdd;
DROP FUNCTION IF EXISTS rand_address;
DROP PROCEDURE IF EXISTS insert_users;
DROP PROCEDURE IF EXISTS insert_reserve;
DROP PROCEDURE IF EXISTS insert_billing;
DROP PROCEDURE IF EXISTS insert_member;
DROP PROCEDURE IF EXISTS insert_performance;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database： `barbershop`
--

-- --------------------------------------------------------

--
-- Relation structure `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Relation structure `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Relation structure `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee info', 7, 'add_employeeinfo'),
(26, 'Can change employee info', 7, 'change_employeeinfo'),
(27, 'Can delete employee info', 7, 'delete_employeeinfo'),
(28, 'Can view employee info', 7, 'view_employeeinfo'),
(29, 'Can add users', 8, 'add_users'),
(30, 'Can change users', 8, 'change_users'),
(31, 'Can delete users', 8, 'delete_users'),
(32, 'Can view users', 8, 'view_users');

-- --------------------------------------------------------

--
-- Relation structure `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$6MEqqz7fKdAT$XENGtZnQiXRMQCR7sORP6swLH73lfo3bwnLa3rFkDL8=', '2020-04-15 02:16:23.186736', 1, 'admin', '', '', '', 1, 1, '2020-04-09 12:07:45.000000');

-- --------------------------------------------------------

--
-- Relation structure `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Relation structure `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Relation structure `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-04-09 12:34:52.417192', '1', 'employeeInfo object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-04-10 15:35:30.137891', '12', 'May', 3, '', 7, 1),
(3, '2020-04-10 15:36:57.321467', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Relation structure `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'supervisor', 'employeeinfo'),
(8, 'supervisor', 'users');

-- --------------------------------------------------------

--
-- Relation structure `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-09 12:05:16.530001'),
(2, 'auth', '0001_initial', '2020-04-09 12:05:20.739209'),
(3, 'admin', '0001_initial', '2020-04-09 12:05:30.512896'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-09 12:05:32.171122'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-09 12:05:32.220383'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-09 12:05:33.831129'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-09 12:05:34.957412'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-09 12:05:35.087902'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-09 12:05:35.129106'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-09 12:05:35.789782'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-09 12:05:35.900766'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-09 12:05:35.975174'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-09 12:05:36.315391'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-09 12:05:36.503156'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-09 12:05:36.636320'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-09 12:05:36.678740'),
(17, 'sessions', '0001_initial', '2020-04-09 12:05:37.037098'),
(18, 'supervisor', '0001_initial', '2020-04-09 12:27:28.248697'),
(19, 'supervisor', '0002_users', '2020-04-14 14:51:48.022795');

-- --------------------------------------------------------

--
-- Relation structure `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Save the data in the table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4wk55ay3gijnl2kx2ypmhn281xzoqj0u', 'NTZlZjBiNzRhNjRmMGI4NjRlYmQxYTI1MzQzNDgwZjEzYTY5MjBkODp7ImRlbGV0ZUluZGV4IjpbMSwyLDMsNCw1LDYsNyw4LDksMTAsMTEsMTIsMTNdLCJ1c2VybmFtZSI6IlNheG9uIiwiaXNsb2dpbiI6ZmFsc2UsInJvbGUiOiJlbXBsb3llZSJ9', '2020-05-16 04:22:28.572107'),
('f7qb7wyrlku09wh9tn88qsw4gf5wfpeo', 'M2YzNjI2Yjc0MzVmMWE2MGM5NWM5Zjk3M2QzZGYyNTRkYWRiODNiZTp7InVzZXJuYW1lIjoiYWRtaW4iLCJpc2xvZ2luIjp0cnVlLCJyb2xlIjoic3VwZXJ2aXNvciJ9', '2020-05-09 04:01:02.555972'),
('j76ywskceb1jqhyrdiczqws9loxob7hm', 'NzFlMWQ5Y2M5ZTZlZjU0NzI5ZjlhZmI0ZTQ3YmNjNDI3ODdkMzY4NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YTkxM2NkNWViNzIxYTU5YTQ0NDczOTQ1MjcyOTU4ZGRhZWI1YzRkIiwidXNlcm5hbWUiOiJTYXhvbiIsImlzbG9naW4iOmZhbHNlLCJyb2xlIjoiZW1wbG95ZWUifQ==', '2020-05-04 11:28:55.701304'),
('tomxzkq7f58w98eavvm44kg7yddbozqh', 'M2YzNjI2Yjc0MzVmMWE2MGM5NWM5Zjk3M2QzZGYyNTRkYWRiODNiZTp7InVzZXJuYW1lIjoiYWRtaW4iLCJpc2xvZ2luIjp0cnVlLCJyb2xlIjoic3VwZXJ2aXNvciJ9', '2020-05-09 04:01:19.718555');

--
-- The index of the dump table
--

--
-- Relation index `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Relation index `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Relation index `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Relation index `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Relation index `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Relation index `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Relation index `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Relation index `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Relation index `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Relation index `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Use AUTO_INCREMENT on the exported table
--

--
-- use relation AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- use relation AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- use relation AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- use relation AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- use relation AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- use relation AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- use relation AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- use relation AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- use relation AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrict the exported table
--

--
-- Restrict relation `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Restrict relation `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Restrict relation `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrict relation `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrict relation `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

create table account(
  `uname` varchar(20) primary key unique not null,
  `password` varchar(100) not null,
  `email` varchar(100) not null check ((email like '%@163.com') or (email like '%@qq.com') or (email like '%@gmail.com') or (email like '%@outlook.com')),
  `role` varchar(20) not null check (role in ('supervisor', 'employee', 'customer', 'admin'))
)default charset=utf8;

create table users(
`uid` int primary key not null auto_increment,
`uname` varchar(20),
`gender` varchar(10),
`age` int(3) default 18,
`birthday` date,
`phone_num` varchar(20),
`address` varchar(100),
`avatar` blob,
foreign key (`uname`) references account(`uname`) on delete cascade on update cascade
)default charset=utf8;

create table member(
`mname` varchar(20),
`balance` numeric(20,2),
`level` varchar(20),
primary key(mname)
)default charset=utf8;

create table servelist(
  `hairname` varchar(100) not null,
  `hairtype` varchar(100) not null,
  `price` int not null,
  primary key(hairname)
)default charset=utf8;

create table reserve(
`rid` int not null auto_increment,
`cname` varchar(20),
`hairname` varchar(20),
`ename` varchar(20),
`rtime` datetime,
`rstatus` varchar(20) check (rstatus in ('Accepted', 'Pending')),
primary key(rid),
foreign key (hairname) references servelist(hairname) on delete cascade on update cascade
)default charset=utf8;

create table employee(
  `ename` varchar(20) not null primary key,
  `status` varchar(20)
)default charset=utf8;

create table performance(
`ename` varchar(20) not null,
`sdate` date,
`serve_num` int(10),
`interests` int(10),
primary key (ename, sdate),
foreign key(ename) references employee(ename) on delete cascade
)default charset=utf8;

create table billing(
  `bid` int not null primary key auto_increment,
  `btime` datetime
)default charset=utf8;

delimiter $$
create function rand_num() returns int(5)
begin
declare i int default 0;
set i = floor(10+rand() * 10);
return i;
end 
$$

delimiter $$
create function rand_string(n int) returns varchar(255)
begin
declare chars_str varchar(100) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ';
declare return_str varchar(255) default '';
declare i int default 0;
while i<n do
set return_str =concat(return_str,substring(chars_str,floor(1+rand()*52),1));
set i=i+1;
end while;
return return_str;
end 
$$

delimiter $$
CREATE FUNCTION `generate_email`(emailType VARCHAR(36)) RETURNS char(100) CHARSET utf8
    DETERMINISTIC
BEGIN
  DECLARE head VARCHAR (100) DEFAULT '000,aaa,bbb,ccc';
  DECLARE content CHAR(10) DEFAULT '0123456789';
  DECLARE phone CHAR(11) DEFAULT SUBSTRING(head, 1+ (FLOOR(1 + (RAND() * 3)) * 4), 3);
  DECLARE email CHAR(100); 
  DECLARE i INT DEFAULT 1;
  DECLARE len INT DEFAULT LENGTH(content);
  WHILE
    i < 9 DO SET i = i + 1;
    SET phone = CONCAT(phone, SUBSTRING(content, FLOOR(1 + RAND() * len), 1));
  END WHILE;
	set email = CONCAT(phone,emailType); 
  RETURN email;
END $$

delimiter $$
CREATE  FUNCTION `generatePhone`() RETURNS char(11) CHARSET utf8
    DETERMINISTIC
BEGIN
    DECLARE head VARCHAR(100) DEFAULT '000,156,136,176,183,134,137';
    
    DECLARE content CHAR(10) DEFAULT '0123456789';
    
    DECLARE phone CHAR(11) DEFAULT substring(head, 1+(FLOOR(1 + (RAND() * 3))*4), 3);
    
    DECLARE i int DEFAULT 1;
    
    DECLARE len int DEFAULT LENGTH(content);
    WHILE i<9 DO
        SET i=i+1;
        SET phone = CONCAT(phone, substring(content, floor(1 + RAND() * len), 1));
    END WHILE;
    
    RETURN phone;
END $$

CREATE FUNCTION `rand_stringAdd`(var_string TEXT) RETURNS TEXT CHARSET utf8
BEGIN
SET @num= LENGTH(var_string)-LENGTH(REPLACE(var_string,',',''))+1;
SET @index= FLOOR(RAND()*@num)+1;
SET @rand_start =SUBSTRING_INDEX(var_string,',',@index);
SET  @rand_end =SUBSTRING_INDEX(@rand_start,',',-1);
RETURN @rand_end ;
END$$

delimiter $$
CREATE FUNCTION `rand_address`(param_city VARCHAR(64)) RETURNS VARCHAR(128) CHARSET utf8
BEGIN
DECLARE var_city TEXT ;
DECLARE var_address TEXT;
DECLARE var_city_replace TEXT;
DECLARE city_beijing TEXT DEFAULT 'Beijing,Dongcheng,Xicheng,Chaoyang,Fengtai,Shijingshan,Haidian,Shunyi,Tongzhou,Daxing,Fangshan,Mentougou,Changping,Pinggu,Miyun,Huairou,Yanqing';
DECLARE city_guangdong TEXT DEFAULT 'Guangdong,Guangzhou,Shenzhen,Zhuhai,Shantou,Foshan,Shaoguan,Zhanjiang,Zhaoqing,Jiangmen,Maoming,Huizhou,Meizhou,Shanwei,Heyuan,Yangjiang,Qingyuan,Dongguan,Zhongshan,Chaozhou,Jieyang,Yunfu';
IF LOCATE(param_city,city_guangdong ) THEN  SET var_city= city_guangdong  ; SET  var_city_replace=REPLACE(city_guangdong,',','');
ELSEIF LOCATE(param_city,city_beijing ) THEN  SET var_city= city_beijing  ; SET  var_city_replace=REPLACE(city_beijing,',','');
END IF;
SET @address_num  =LENGTH(var_city)-LENGTH(var_city_replace);
SET @rand_address =SUBSTRING_INDEX(var_city,',',-@address_num);
SET var_address =rand_stringAdd(@rand_address);
SET var_city=SUBSTRING_INDEX(var_city,',',1);
RETURN CONCAT(var_city, ',', var_address);
    END$$

delimiter $$
create procedure insert_account(in start int(10), in max_num int(20))
begin
  declare i int default 0;
  set autocommit = 0;
  repeat
  set i = i + 1;
  insert into account (uname, password, email, role)
    values(rand_string(20),
    '4a7d1ed414474e4033ac29ccb8653d9b',
    generate_email('@163.com'),
    ELT(CEILING(rand() * 3), 'customer', 'employee', 'supervisor'));
    until i = max_num
end repeat;
insert into account (uname, password, email, role) values ('admin', '21232f297a57a5a743894a0e4a801fc3', 'saxonsa5683@outlook.com', 'admin');
insert into account (uname, password, email, role) values ('supervisor', '202cb962ac59075b964b07152d234b70', '1410409127@qq.com', 'supervisor');
insert into account (uname, password, email, role) values ('employee', '202cb962ac59075b964b07152d234b70', 'saxonsa5683@gmail.com', 'employee');
insert into account (uname, password, email, role) values ('customer', '202cb962ac59075b964b07152d234b70', 'saxonsa5683@163.com', 'customer');
commit;
end $$

-- delimiter $$
-- create procedure insert_member(in start int(10),in max_num int(10))
-- begin
-- declare i int default 0;
-- set autocommit = 0;
-- repeat 
-- set i=i+1;
-- insert into member (`mid`, `mname`, `balance`, `level`) 
-- 					values((start+i),
-- 					rand_string(8),
-- 					0,
-- 					ELT(CEILING(rand() * 5), 'Bronze', 'Silver', 'Gold', 'Platinum', 'Diamond'));
-- until i = max_num
-- end repeat;
-- update member set balance = ROUND(RAND() * 1500 + 500) where `level` = 'Bronze';
-- update member set balance = ROUND(RAND() * 3000 + 2000) where `level` = 'Silver';
-- update member set balance = ROUND(RAND() * 5000 + 5000) where `level` = 'Gold';
-- update member set balance = ROUND(RAND() * 10000 + 10000) where `level` = 'Platinum';
-- update member set balance = ROUND(RAND() * 30000 + 20000) where `level` = 'Diamond';
-- commit;
-- end $$

delimiter $$
create procedure insert_reserve(in start int(10),in max_num int(20))
begin
declare i int default 0;
set autocommit = 0;
repeat 
set i=i+1;
insert into reserve (rid,cname, hairname, ename, rtime, rstatus)
					values((start+i),rand_string(20), 
					ELT(CEILING(rand() * 7), 'buzz', 'crew', 'beehive', 'pigtail', 'Omelet hair style', 'Bob haircut', 'Sassoon hair style'),
					rand_num(),
					DATE_ADD('2018-11-13 18:18:18',  INTERVAL  FLOOR(1 + (RAND() * 18921600)) SECOND),
          ELT(CEILING(rand() * 2), 'Accepted', 'Pending'));
until i = max_num
end repeat;
commit;
end $$



-- delimiter $$
-- create procedure insert_employee(in start int(10),in max_num int(10))
-- begin
-- declare i int default 0;
-- set autocommit = 0;
-- repeat 
-- set i=i+1;
-- insert into employee (`eid`, `ename`, `status`) 
-- 					values((start+i),
-- 					rand_string(8),
-- 					ELT(CEILING(rand() * 3), 'Available', 'Busy', 'Offline')
-- 					);
-- until i = max_num
-- end repeat;
-- commit;
-- end $$

delimiter $$
create procedure insert_billing(in start int(10),in max_num int(10))
begin
declare i int default 0;
set autocommit = 0;
repeat 
set i=i+1;
insert into billing (`bid`, `btime`) 
					values((start+i),
					DATE_ADD('2020-03-19 18:18:18',  INTERVAL  FLOOR(1 + (RAND() * 5184000)) SECOND));
until i = max_num
end repeat;
commit;
end $$

delimiter ;
call insert_account(0, 10000); -- 0 is the start value of id, 10000 is the amouont of records to insert
insert into users (uname) select uname from account;
ALTER TABLE `users` ADD CONSTRAINT gendercheck_chk_1 CHECK(gender in ('Male', 'Female'));
update users set birthday = DATE_ADD('1988-11-13',  INTERVAL  FLOOR(1 + (RAND() * 1000)) DAY);
update users set phone_num = generatePhone();
update users set address = rand_address('Guangdong');
update users set age = YEAR(CURDATE())-YEAR(birthday) where age = 18;
update users set gender = ELT(CEILING(rand() * 2), 'Male', 'Female');

insert into servelist (hairname, hairtype, price) values ('Omelet hair style', 'curly hair', '1188');
insert into servelist (hairname, hairtype, price) values ('Bob haircut', 'straight hair', '188');
insert into servelist (hairname, hairtype, price) values ('Sassoon hair style', 'straight hair', '168');
insert into servelist (hairname, hairtype, price) values ('Crew cut', 'crop', '88');
insert into servelist (hairname, hairtype, price) values ('wave hair style', 'curly hair', '1288');
insert into servelist (hairname, hairtype, price) values ('Afro hair', 'curly hair', '688');
insert into servelist (hairname, hairtype, price) values ('fringe trim', 'trim', '108');
insert into servelist (hairname, hairtype, price) values ('ringlet style', 'curly hair', '888');
insert into servelist (hairname, hairtype, price) values ('buzz', 'cut', '88');
insert into servelist (hairname, hairtype, price) values ('crew', 'cut', '188');
insert into servelist (hairname, hairtype, price) values ('beehive', 'cut', '288');
insert into servelist (hairname, hairtype, price) values ('pigtail', 'cut', '388');

insert into member (mname) select uname from account where role = 'customer';
update member set `level` = ELT(CEILING(rand() * 5), 'Bronze', 'Silver', 'Gold', 'Platinum', 'Diamond');
update member set balance = ROUND(RAND() * 1500 + 500) where `level` = 'Bronze';
update member set balance = ROUND(RAND() * 3000 + 2000) where `level` = 'Silver';
update member set balance = ROUND(RAND() * 5000 + 5000) where `level` = 'Gold';
update member set balance = ROUND(RAND() * 10000 + 10000) where `level` = 'Platinum';
update member set balance = ROUND(RAND() * 30000 + 20000) where `level` = 'Diamond';
ALTER TABLE `member` ADD CONSTRAINT testtable_chk_1 CHECK(`level` in ('Bronze', 'Silver', 'Gold', 'Platinum', 'Diamond'));

insert into employee (ename) select uname from account where role = 'employee';
update employee set status = ELT(CEILING(rand() * 3), 'Available', 'Busy', 'Offline');
ALTER TABLE `employee` ADD CHECK(status in ('Available', 'Busy', 'Offline'));
ALTER TABLE `employee` change column status status varchar(20) not null;
-- call insert_employee(0, 100);

insert into performance (ename) select ename from employee;
update performance set sdate = DATE_ADD('2020-3-17 18:18:18',  INTERVAL  FLOOR(1 + (RAND() * 5184000)) SECOND);
update performance set serve_num = ROUND(RAND() * 100);
update performance set interests = RAND() * 3000;

call insert_reserve(0, 100000);
call insert_billing(0, 100000);