package models

import "time"

//`userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员ID',
//`nickname` varchar(255) DEFAULT NULL COMMENT '会员昵称（微信读取）',
//`openid` varchar(255) DEFAULT NULL COMMENT '会员微信号',
//`areaid` int(11) DEFAULT NULL COMMENT '加入地址ID',
//`addressid` int(11) DEFAULT NULL COMMENT '加入投放地址ID',
//`telphone` varchar(255) DEFAULT NULL COMMENT '会员手机号',
//`password` varchar(255) DEFAULT NULL COMMENT '会员密码',
//`gender` varchar(255) DEFAULT NULL COMMENT '会员性别',
//`birthday` datetime DEFAULT NULL COMMENT '会员生日',
//`coinum` int(11) DEFAULT '0' COMMENT '余币数量',
//`addtime` datetime DEFAULT NULL COMMENT '加入时间',
//`lastlogin` datetime DEFAULT NULL COMMENT '最后登录时间',
//`wxcode` varchar(255) DEFAULT NULL COMMENT '微信code',
//`wxdata` text COMMENT '微信data',
//`province` varchar(100) DEFAULT NULL COMMENT '微信省/直辖市',
//`city` varchar(100) DEFAULT NULL COMMENT '微信城市/区',
//`avatarurl` varchar(255) DEFAULT NULL COMMENT '头像图片',
//`language` varchar(255) DEFAULT NULL COMMENT '微信用户语言',
type User struct {
	Userid int `orm:"column(userid);pk"` // 设置主键
	Nickname string
	Openid string
	Areaid int
	Addressid int
	Telphone string
	Password string
	Gender string
	Birthday time.Time
	Coinum int
	Addtime time.Time
	Lastlogin time.Time
	Wxcode string
	Wxdata string
	Province string
	City string
	Avatarurl string
	Language string
} 

func (m *User) TableName() string{
	return TableName("user")
}