package models

//`attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
//`cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
//`attr_name` varchar(60) NOT NULL DEFAULT '',
//`attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
//`attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
//`attr_values` text NOT NULL,
//`attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
//`is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',

type Attribute struct {
	Attr_id int `orm:"column(attr_id);pk"` // 设置主键
	Cat_id int
	Attr_name string
	Attr_input_type int
	Attr_type int
	Attr_values string
	Attr_index int
	Sort_order int
	Is_linked int
	Attr_group int
}

func (m* Attribute) TableName() string {
	return TableName("shop_attribute")
}