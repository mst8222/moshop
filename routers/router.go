package routers

import (
	"moshop/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.AdminController{},"*:Main")
	beego.Router("/login", &controllers.AdminController{},"*:Login")
    //beego.AutoRouter(&controllers.AdminController{})
}
