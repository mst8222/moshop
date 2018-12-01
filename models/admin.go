package models

import "time"

//`adminid` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
//`adusername` varchar(255) DEFAULT NULL COMMENT '管理员用户名',
//`adpasswd` varchar(255) DEFAULT NULL COMMENT '管理员密码',
//`authid` int(11) DEFAULT NULL COMMENT '所属权限组ID',
//`password_hash` varchar(255) DEFAULT NULL,
//`password_reset_token` varchar(255) DEFAULT NULL,
//`auth_key` varchar(255) DEFAULT NULL,
//`status` int(11) DEFAULT NULL,
//`created_at` varchar(255) DEFAULT NULL,
//`update_at` varchar(255) DEFAULT NULL,
//`updated_at` varchar(255) DEFAULT NULL,
//`lastlogin` datetime(6) DEFAULT NULL COMMENT '最后登录时间',
type Admin struct {
	Adminid int `orm:"column(adminid);pk"` // 设置主键
	Adusername string
	Adpasswd string
	Authid int
	Password_hash string
	Password_reset_token string
	Auth_key string
	Status int
	Created_at string
	Update_at string
	Updated_at string
	Lastlogin time.Time
}

func (m* Admin) TableName() string {
	return TableName("shop_admin")
}
