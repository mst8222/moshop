package models

//`brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
//`brand_name` varchar(60) NOT NULL DEFAULT '',
//`brand_logo` varchar(80) NOT NULL DEFAULT '',
//`brand_desc` text NOT NULL,
//`site_url` varchar(255) NOT NULL DEFAULT '',
//`sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
//`is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',

type Brand struct {

}

func (m* Brand) TableName() string {
	return TableName("shop_brand")
}