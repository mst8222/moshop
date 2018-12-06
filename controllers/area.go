package controllers

import (
	"moshop/models"
)

type AreaController struct {
	baseController
}

func (c *AreaController) Index() {

}

func (c *AreaController) Create() {

}

func (c *AreaController) Update() {

}

func (c *AreaController) Delete() {

}

func (c *AreaController) Select() {
	if id := c.GetString("id"); id !="" {
		area :=[] *models.Area{}
		query := c.o.QueryTable(new(models.Area).TableName()).Filter("parent_code",id)
		query.All(&area)
		tt :=""

		for _,val := range area{
			tt = tt+"<option value='"+val.Code+"'>"+val.Name+"</option>"
		}

		tt = "<option value=>请选择</option>"+tt
		c.Ctx.WriteString(tt)
	}
}