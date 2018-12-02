package controllers

import (
	"moshop/models"
	"moshop/util"
	"strings"
	"fmt"
)

type AdminController struct {
	baseController
}

func (c *AdminController) Login() {
	if c.Ctx.Request.Method == "POST" {
		username := c.GetString("adusername")
		password := c.GetString("adpasswd")
		fmt.Println(username+":"+password)
		admin := models.Admin{Adusername:username}
		c.o.Read(&admin,"adusername")
		if admin.Adpasswd == "" {
			c.History("此账号不存在","")
		}
		if util.Md5(password) != strings.Trim(admin.Adpasswd," ") {
			c.History("密码错误","")
		}
		if _,err :=c.o.Update(&admin);err !=nil {
			c.History("登录异常","")
		}else {
			c.History("登录成功","/")
		}
		c.SetSession("admin",admin)
	}
	c.TplName = "login.tpl"
}

//主页
func (c *AdminController) Main(){
	c.TplName = "index.tpl"
}