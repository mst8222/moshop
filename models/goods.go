package models

//`goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
//`cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
//`goods_sn` varchar(60) NOT NULL DEFAULT '',
//`goods_name` varchar(120) NOT NULL DEFAULT '',
//`goods_name_style` varchar(60) NOT NULL DEFAULT '+',
//`click_count` int(10) unsigned NOT NULL DEFAULT '0',
//`brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
//`provider_name` varchar(100) NOT NULL DEFAULT '',
//`goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
//`market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
//`virtual_sales` smallint(5) unsigned NOT NULL DEFAULT '0',
//`shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
//`promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
//`promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
//`promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
//`warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
//`keywords` varchar(255) NOT NULL DEFAULT '',
//`goods_brief` varchar(255) NOT NULL DEFAULT '',
//`goods_desc` text NOT NULL,
//`goods_thumb` varchar(255) NOT NULL DEFAULT '',
//`goods_img` varchar(255) NOT NULL DEFAULT '',
//`original_img` varchar(255) NOT NULL DEFAULT '',
//`is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
//`extension_code` varchar(30) NOT NULL DEFAULT '',
//`is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
//`is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
//`is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`integral` int(10) unsigned NOT NULL DEFAULT '0',
//`add_time` int(10) unsigned NOT NULL DEFAULT '0',
//`sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
//`is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
//`bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
//`last_update` int(10) unsigned NOT NULL DEFAULT '0',
//`goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
//`seller_note` varchar(255) NOT NULL DEFAULT '',
//`give_integral` int(11) NOT NULL DEFAULT '-1',
//`rank_integral` int(11) NOT NULL DEFAULT '-1',
//`suppliers_id` smallint(5) unsigned DEFAULT NULL,
//`is_check` tinyint(1) unsigned DEFAULT NULL,

type Goods struct {

}

func (m* Goods) TableName() string {
	return TableName("shop_goods")
}