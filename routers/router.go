package routers

import (
	"moshop/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("admin/", &controllers.AdminController{},"*:Main")
	beego.Router("admin/login", &controllers.AdminController{},"*:Login")

	beego.Router("admin/address", &controllers.AddressController{},"*:Index")
	beego.Router("admin/address/create", &controllers.AddressController{},"*:Create")
	beego.Router("admin/address/update", &controllers.AddressController{},"*:Update")
	beego.Router("admin/address/save", &controllers.AddressController{},"*:Save")
	beego.Router("admin/address/delete", &controllers.AddressController{},"*:Delete")

	beego.Router("admin/area/select", &controllers.AreaController{},"*:Select")
    //beego.AutoRouter(&controllers.AdminController{})
}
