package models

//`product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
//`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`goods_attr` varchar(50) DEFAULT NULL,
//`product_sn` varchar(60) DEFAULT NULL,
//`product_number` mediumint(8) unsigned DEFAULT '0',

type Products struct {
	Product_id int `orm:"column(product_id);pk"` // 设置主键
	Goods_id int
	Goods_attr string
	Product_sn string
	Product_number int

}

func (m* Products) TableName() string {
	return TableName("shop_products")
}