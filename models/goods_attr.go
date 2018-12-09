package models

//`goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
//`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
//`attr_value` text NOT NULL,
//`attr_price` varchar(255) NOT NULL DEFAULT '',

type GoodsAttr struct {

}

func (m* GoodsAttr) TableName() string {
	return TableName("shop_goods_attr")
}