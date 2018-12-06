package controllers

import (
	"moshop/models"
	"fmt"
	"strconv"
)

type AddressController struct {
	baseController
}

//管理列表页
func (c *AddressController) Index() {

	mp := make(map[string]string)
	mp["title"] = "社区管理"
	mp["crumbs"] = "社区管理"
	c.Data["m"] = mp

	var (
		page       int
		pagesize   int = 8
		offset     int
		list       [] *models.Address
		keyword    string
		cateId 	   int
	)

	addresses := [] *models.Address{}
	c.o.QueryTable( new(models.Address).TableName()).OrderBy("-addressid").All(&addresses)
	c.Data["addresses"] = addresses

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/address/index.tpl"
}

//添加页
func (c *AddressController) Create() {

	mp := make(map[string]string)
	mp["title"] = "添加社区"
	mp["crumbs"] = "添加社区"
	c.Data["m"] = mp

	busipartner := [] *models.Busipartner{}
	c.o.QueryTable( new(models.Busipartner).TableName()).All(&busipartner)
	c.Data["busipartner"] = busipartner

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/address/create.tpl"
}

//修改页
func (c *AddressController) Update() {

	mp := make(map[string]string)
	mp["title"] = "修改社区"
	mp["crumbs"] = "修改社区"
	c.Data["m"] = mp

	busipartner := [] *models.Busipartner{}
	c.o.QueryTable( new(models.Busipartner).TableName()).All(&busipartner)
	//c.Data["busipartner"] = busipartner

	area := [] *models.Area{}
	c.o.QueryTable( new(models.Area).TableName()).Filter("grade",1).All(&area)
	//c.Data["citys"] = area


	//根据ID调用
	addressid,_ := c.GetInt("id")
	if addressid!=0 {
		address := models.Address{Addressid:addressid}
		c.o.Read(&address)
		c.Data["address"] = address
		fmt.Println("address.Areacode:"+address.Areacode)
		//找社区所在区/县
		acode := models.Area{}
		c.o.QueryTable( new(models.Area).TableName()).Filter("code", address.Areacode).One(&acode,"code","parent_code","province","name")
		c.Data["acode"] = acode
		//找社区所在城市
		city := models.Area{}
		c.o.QueryTable( new(models.Area).TableName()).Filter("code", acode.Parent_code).One(&city)
		c.Data["city"] = city

		tt :=""
		for _,val := range area{
			//fmt.Println(acode.Province+"&&"+val.Name)
			if acode.Province == val.Name {
				tt = tt+"<option value='"+val.Code+"' selected=\"selected\">"+val.Name+"</option>"
			}else {
			tt = tt+"<option value='"+val.Code+"'>"+val.Name+"</option>"
			}
		}
		c.Data["tt"] = tt

		bb :=""
		for _,val := range busipartner{
			//fmt.Println(acode.Province+"&&"+val.Name)
			if address.Partnerid == val.Busipartnerid {
				bb = bb+"<option value='"+strconv.Itoa(val.Busipartnerid)+"' selected=\"selected\">"+val.Busipartnername+"</option>"
			}else {
				bb = bb+"<option value='"+strconv.Itoa(val.Busipartnerid)+"'>"+val.Busipartnername+"</option>"
			}
		}
		c.Data["bb"] = bb
	}

	c.Layout = "admin/layout.tpl"
	c.LayoutSections = make(map[string]string)
	c.LayoutSections["Menu"] = "admin/menu.tpl"
	c.TplName = "admin/address/update.tpl"
}

//保存功能，表单提交处理页
func (c *AddressController) Save() {
	address := models.Address{}
	address.Addressname = c.Input().Get("addressname")
	address.Areacode = c.Input().Get("areacode")
	address.Addressdetail =c.Input().Get("addressdetail")
	address.Addresstype = c.Input().Get("addresstype")
	address.Partnerid,_ = c.GetInt("partnerid")
	address.Isdefault,_ = c.GetInt("isdefault")

	addressid,_ := c.GetInt("id")
	fmt.Println("addressid:"+strconv.Itoa(addressid))
	if addressid==0 {
		if _, err := c.o.Insert(&address); err != nil {
			c.History("插入数据错误"+err.Error(), "")
		} else {
			c.History("插入数据成功", "/admin/address")
		}
	}else {
		address.Addressid = addressid
		if _, err := c.o.Update(&address); err != nil {
			c.History("更新数据出错"+err.Error(), "")
		} else {
			c.History("更新数据成功", "/admin/address")
		}
	}
}

//删除功能
func (c *AddressController) Delete() {
	address := models.Address{}
	addressid,_ := c.GetInt("id")
	if addressid != 0 {
		address.Addressid = addressid
		if _, err := c.o.Delete(&address); err != nil {
			c.History("删除数据错误"+err.Error(), "")
		} else {
			c.History("删除数据成功", "/admin/address")
		}
	}
}
