package models

//`product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
//`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`goods_attr` varchar(50) DEFAULT NULL,
//`product_sn` varchar(60) DEFAULT NULL,
//`product_number` mediumint(8) unsigned DEFAULT '0',

type Products struct {

}

func (m* Products) TableName() string {
	return TableName("shop_products")
}