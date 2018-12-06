package models

//`areaid` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
//`code` varchar(20) NOT NULL DEFAULT '' COMMENT '行政区划编码',
//`parent_code` varchar(20) DEFAULT NULL COMMENT '父级行政区划编码',
//`short_code` varchar(20) DEFAULT NULL,
//`parent_short_code` varchar(20) DEFAULT NULL,
//`name` varchar(128) DEFAULT NULL COMMENT '名称',
//`province1` varchar(64) DEFAULT NULL COMMENT '省',
//`city1` varchar(64) DEFAULT NULL COMMENT '市',
//`district1` varchar(64) DEFAULT NULL COMMENT '县/区',
//`grade` char(1) DEFAULT NULL COMMENT '等级 省1 市2 县3',
//`province` varchar(64) DEFAULT NULL COMMENT '省',
//`city` varchar(64) DEFAULT NULL COMMENT '市',
//`district` varchar(64) DEFAULT NULL COMMENT '县/区',
//`full_name` varchar(256) DEFAULT NULL COMMENT '行政区划全称',
//`weatherid` varchar(255) DEFAULT NULL COMMENT '中国气象局地区编码',

type Area struct {
	Areaid int `orm:"column(areaid);pk"` // 设置主键
	Code string
	Parent_code string
	Short_code string
	Parent_short_code string
	Name string
	Province1 string
	City1 string
	District1 string
	Grade string
	Province string
	City string
	District string
	Full_name string
	Weatherid string

}

func (m* Area) TableName() string {
	return TableName("area")
}
