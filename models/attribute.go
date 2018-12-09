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

}

func (m* Attribute) TableName() string {
	return TableName("shop_attribute")
}