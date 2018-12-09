package models

//`img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
//`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`img_url` varchar(255) NOT NULL DEFAULT '',
//`img_desc` varchar(255) NOT NULL DEFAULT '',
//`thumb_url` varchar(255) NOT NULL DEFAULT '',
//`img_original` varchar(255) NOT NULL DEFAULT '',

type GoodsGallery struct {

}

func (m* GoodsGallery) TableName() string {
	return TableName("shop_goods_gallery")
}