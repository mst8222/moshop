package models

//`addressid` int(11) NOT NULL AUTO_INCREMENT COMMENT '投放地址ID',
//`addressname` varchar(255) DEFAULT NULL COMMENT '地址名称',
//`areacode` varchar(255) DEFAULT NULL COMMENT '所属城市地区Code',
//`addressdetail` varchar(255) DEFAULT NULL COMMENT '详细地址',
//`addresstype` varchar(255) DEFAULT NULL COMMENT '地址类型',
//`partnerid` int(11) DEFAULT '0' COMMENT '加盟商ID（自营为0）',
//`isdefault` int(4) DEFAULT '0' COMMENT '是否默认地址',
type Address struct {
	Addressid int  `orm:"column(addressid);pk"` // 设置主键
	Addressname string
	Areacode string
	Addressdetail string
	Addresstype string
	Partnerid int
	Isdefault int

}

func (m* Address) TableName() string {
	return TableName("address")
}