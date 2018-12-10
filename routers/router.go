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

	beego.Router("admin/category", &controllers.CategoryController{},"*:Index")
	beego.Router("admin/category/create", &controllers.CategoryController{},"*:Create")
	beego.Router("admin/category/update", &controllers.CategoryController{},"*:Update")
	beego.Router("admin/category/save", &controllers.CategoryController{},"*:Save")
	beego.Router("admin/category/delete", &controllers.CategoryController{},"*:Delete")
	beego.Router("admin/category/select", &controllers.CategoryController{},"*:Select")

	beego.Router("admin/goods", &controllers.GoodsController{},"*:Index")
	beego.Router("admin/goods/create", &controllers.GoodsController{},"*:Create")
	beego.Router("admin/goods/update", &controllers.GoodsController{},"*:Update")
	beego.Router("admin/goods/save", &controllers.GoodsController{},"*:Save")
	beego.Router("admin/goods/delete", &controllers.GoodsController{},"*:Delete")
    //beego.AutoRouter(&controllers.AdminController{})
}
