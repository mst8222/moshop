package models

//`price_type` tinyint(1) unsigned NOT NULL,
//`goods_id` mediumint(8) unsigned NOT NULL,
//`volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
//`volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',

type VolumePrice struct {

}

func (m* VolumePrice) TableName() string {
	return TableName("shop_volume_price")
}