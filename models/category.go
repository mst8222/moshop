package models

//`cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,分类编号
//`cat_name` varchar(90) NOT NULL DEFAULT '',类别名称
//`keywords` varchar(255) NOT NULL DEFAULT '',分类关键词
//`cat_desc` varchar(255) NOT NULL DEFAULT '',分类描述
//`parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',上级分类
//`sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',排序序号
//`template_file` varchar(50) NOT NULL DEFAULT '',模板文件
//`measure_unit` varchar(15) NOT NULL DEFAULT '',数量单位
//`show_in_nav` tinyint(1) NOT NULL DEFAULT '0',是否显示在导航栏
//`style` varchar(150) NOT NULL,分类的样式表
//`is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',是否显示
//`grade` tinyint(4) NOT NULL DEFAULT '0',价格区间个数
//`filter_attr` varchar(255) NOT NULL DEFAULT '0',筛选属性
type Category struct {
	Cat_id int  `orm:"column(cat_id);pk"` // 设置主键
	Cat_name string
	Keywords string
	Cat_desc string
	Parent_id int
	Sort_order int
	Template_file string
	Measure_unit string
	Show_in_nav int
	Style string
	Is_show int
	Grade int
	Filter_attr string
}

func (m* Category) TableName() string {
	return TableName("shop_category")
}