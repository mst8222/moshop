package models

import "time"

//`busipartnerid` int(11) NOT NULL AUTO_INCREMENT COMMENT '加盟商ID',
//`busipartnername` varchar(255) DEFAULT NULL COMMENT '加盟商名称',
//`areacode` varchar(255) DEFAULT NULL COMMENT '加盟商城市ID',
//`addressid` int(11) DEFAULT NULL COMMENT '加盟商投放地址ID',
//`username` varchar(255) DEFAULT NULL COMMENT '加盟商登录名',
//`password` varchar(255) DEFAULT NULL COMMENT '加盟商密码',
//`contact` varchar(255) DEFAULT NULL COMMENT '加盟商财务联系人',
//`contactphone` varchar(255) DEFAULT NULL COMMENT '加盟商联系人联系方式',
//`finaccount` varchar(255) DEFAULT NULL COMMENT '财务账号',
//`fintype` varchar(255) DEFAULT NULL COMMENT '财务账号类型（银行卡、微信、支付宝）',
//`backup` varchar(255) DEFAULT NULL COMMENT '备注信息',
//`addtime` datetime DEFAULT NULL COMMENT '加入时间',
//`lastlogin` datetime DEFAULT NULL COMMENT '最后登录时间',
type Busipartner struct {
	Busipartnerid int `orm:"column(busipartnerid);pk"` // 设置主键
	Busipartnername string
	Areacode string
	Addressid int
	Username string
	Password string
	Contact string
	Contactphone string
	Finaccount string
	Fintype string
	Backup string
	Addtime time.Time
	Lastlogin time.Time
} 

func (m* Busipartner) TableName() string {
	return TableName("busipartner")
}
