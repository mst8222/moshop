package models

//`img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
//`goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
//`img_url` varchar(255) NOT NULL DEFAULT '',
//`img_desc` varchar(255) NOT NULL DEFAULT '',
//`thumb_url` varchar(255) NOT NULL DEFAULT '',
//`img_original` varchar(255) NOT NULL DEFAULT '',
type GoodsGallery struct {
	Img_id int `orm:"column(img_id);pk"` // 设置主键
	Goods_id int
	Img_url string
	Img_desc string
	Thumb_url string
	Img_original string
}

func (m* GoodsGallery) TableName() string {
	return TableName("shop_goods_gallery")
}