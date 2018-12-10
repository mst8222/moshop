package controllers

import (
	"fmt"
	"moshop/models"
	"moshop/util"
)

type GoodsController struct {
	baseController
}

//列表
func (c *GoodsController) Index()  {
	mp := make(map[string]string)
	mp["title"] = "商品管理"
	mp["crumbs"] = "<li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp

	var (
		page       int
		pagesize   int = 10
		offset     int
		list       [] *models.Goods
		keyword    string
		//areacode   string

		//cateId 	   int
	)
	keyword = c.GetString("goods_name")

	if page, _ = c.GetInt("page"); page < 1 {
		page = 1
	}
	offset = (page - 1) * pagesize
	query := c.o.QueryTable(new(models.Goods).TableName())
	if keyword != "" {
		query = query.Filter("goods_name", keyword)
	}
	//if areacode != "" {
	//	query = query.Filter("areacode", areacode)
	//}
	count, _ := query.Count()
	if count > 0 {
		query.OrderBy("-goods_id").Limit(pagesize, offset).All(&list)
	}
	c.Data["goods_name"] = keyword
	//c.Data["areacode"] = areacode
	c.Data["count"] = count
	c.Data["list"] = list
	c.Data["pagebar"] = util.NewPager(page, int(count), pagesize,
		fmt.Sprintf("/admin/goods?goods_name=%s", keyword), true).ToString()

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/goods/index.tpl"
}

//添加
func (c *GoodsController) Create()  {
	mp := make(map[string]string)
	mp["title"] = "添加商品"
	mp["crumbs"] = "<li class=\"active\"><a href=\"/admin/category\">商品管理</a></li><li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp


	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/goods/create.tpl"
}

//修改
func (c *GoodsController) Update()  {
	mp := make(map[string]string)
	mp["title"] = "修改商品"
	mp["crumbs"] = "<li class=\"active\"><a href=\"/admin/category\">商品管理</a></li><li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp


	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/goods/update.tpl"
}

//保存
func (c *GoodsController) Save()  {

}

//删除
func (c *GoodsController) Delete()  {

}