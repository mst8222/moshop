package controllers

import (
	"moshop/models"
	"strconv"
	"fmt"
)

type CategoryController struct {
	baseController
}

//管理列表页
func (c *CategoryController) Index() {

	mp := make(map[string]string)
	mp["title"] = "商品分类管理"
	mp["crumbs"] = "<li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp

    cate,_ := c.GetInt("cate")
    parentid,_ := c.GetInt("id")

	category := [] *models.Category{}
	query := c.o.QueryTable( new(models.Category).TableName())
	if cate==0 {
		query = query.Filter("parent_id",0)
	}else if cate==2 {
		query = query.Filter("parent_id",parentid)
	}
	count, _ := query.Count()
	c.Data["count"] = count
	query.OrderBy("sort_order").All(&category)

	c.Data["list"] = category

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/category/index.tpl"
}

//添加页
func (c *CategoryController) Create() {
	mp := make(map[string]string)
	mp["title"] = "添加分类"
	mp["crumbs"] = "<li class=\"active\"><a href=\"/admin/category\">商品分类管理</a></li><li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp

	category := [] *models.Category{}
	c.o.QueryTable( new(models.Category).TableName()).Filter("parent_id",0).OrderBy("sort_order").All(&category)
	c.Data["category"] = category

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/category/create.tpl"
}

func (c *CategoryController) Select() {
	if id,_ := c.GetInt("id"); id !=0 {

		category :=[] *models.Category{}
		query := c.o.QueryTable(new(models.Category).TableName()).Filter("parent_id",id)
		query.All(&category)
		tt :=""

		for _,val := range category{
			tt = tt+"<option value='"+strconv.Itoa(val.Cat_id)+"'>"+val.Cat_name+"</option>"
		}

		tt = "<option value=>请选择</option>"+tt
		c.Ctx.WriteString(tt)
	}
}

//修改页
func (c *CategoryController) Update() {
	mp := make(map[string]string)
	mp["title"] = "修改分类"
	mp["crumbs"] = "<li class=\"active\"><a href=\"/admin/category\">商品分类管理</a></li><li class=\"active\">"+mp["title"]+"</li>"
	c.Data["m"] = mp

	category := [] *models.Category{}
	c.o.QueryTable( new(models.Category).TableName()).Filter("parent_id",0).OrderBy("sort_order").All(&category)
	//c.Data["category"] = category
	catlist1 := ""
	catlist2 := ""
	//根据ID调用
	catid,_ := c.GetInt("id")
	fmt.Println("catid:"+strconv.Itoa(catid))
	if catid!=0 {
		categ := models.Category{}
		c.o.QueryTable( new(models.Category).TableName()).Filter("cat_id",catid).One(&categ)
		c.Data["categ"] = categ

		if categ.Parent_id != 0 {
			categ1 := models.Category{}
			c.o.QueryTable( new(models.Category).TableName()).Filter("cat_id",categ.Parent_id).One(&categ1)
			if categ1.Parent_id !=0{

				//分类二
				catlist2 = "<option value='"+strconv.Itoa(categ1.Cat_id)+"' selected=\"selected\">"+categ1.Cat_name+"</option>"
				//分类一
				categ2 := models.Category{}
				c.o.QueryTable( new(models.Category).TableName()).Filter("cat_id",categ1.Parent_id).One((&categ2))
				for _,val := range category{
					if val.Cat_id == categ2.Cat_id {
						catlist1 = catlist1+"<option value='"+strconv.Itoa(val.Cat_id)+"' selected=\"selected\">"+val.Cat_name+"</option>"
					}else {
						catlist1 = catlist1+"<option value='"+strconv.Itoa(val.Cat_id)+"'>"+val.Cat_name+"</option>"
					}
				}

			}else {
				for _,val := range category{
					if val.Cat_id == categ.Parent_id {
						catlist1 = catlist1+"<option value='"+strconv.Itoa(val.Cat_id)+"' selected=\"selected\">"+val.Cat_name+"</option>"
					}else {
						catlist1 = catlist1+"<option value='"+strconv.Itoa(val.Cat_id)+"'>"+val.Cat_name+"</option>"
					}
				}
			}
		}else {
			for _,val := range category{
				catlist1 = catlist1+"<option value='"+strconv.Itoa(val.Cat_id)+"'>"+val.Cat_name+"</option>"
			}
		}
		c.Data["catlist1"] = catlist1
		c.Data["catlist2"] = catlist2
	}

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/category/update.tpl"
}

//保存功能，表单提交处理页
func (c *CategoryController) Save() {
	category := models.Category{}
	category.Cat_name = c.Input().Get("cat_name")
	cate1 := c.Input().Get("cate1")
	cate2 := c.Input().Get("cate2")
	if cate1=="" && cate2=="" {
		category.Parent_id = 0
	}else if cate1!="" && cate2=="" {
		category.Parent_id,_ = strconv.Atoi(cate1)
	}else if cate1!="" && cate2!="" {
		category.Parent_id,_ = strconv.Atoi(cate2)
	}
	category.Sort_order,_ =strconv.Atoi(c.Input().Get("sort_order"))
	category.Show_in_nav,_ = strconv.Atoi(c.Input().Get("show_in_nav"))
	category.Is_show,_ = strconv.Atoi(c.Input().Get("is_show"))

	cat_id,_ := c.GetInt("id")
	fmt.Println("cat_id:"+strconv.Itoa(cat_id))
	if cat_id==0 {
		if _, err := c.o.Insert(&category); err != nil {
			c.History("插入数据错误"+err.Error(), "")
		} else {
			c.History("插入数据成功", "/admin/category")
		}
	}else {
		category.Cat_id = cat_id
		if _, err := c.o.Update(&category); err != nil {
			c.History("更新数据出错"+err.Error(), "")
		} else {
			c.History("更新数据成功", "/admin/category")
		}
	}
}

//删除功能
func (c *CategoryController) Delete() {
	category := models.Category{}
	cat_id,_ := c.GetInt("id")
	if cat_id != 0 {
		category.Cat_id = cat_id
		query := c.o.QueryTable(new(models.Category).TableName()).Filter("parent_id",cat_id)
		count,_ := query.Count()

		if count==0 {
			if _, err := c.o.Delete(&category); err != nil {
				c.History("删除数据错误"+err.Error(), "")
			} else {
				c.History("删除数据成功", "/admin/category")
			}
			//c.History("可以删除", "")
		}else {
			c.History("有下级分类，请先删除下级分类", "")
		}
	}
}
