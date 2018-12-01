package main

import (
	_ "moshop/routers"
	"github.com/astaxie/beego"
	"moshop/models"
	_ "github.com/go-sql-driver/mysql"
)

func init()  {
	models.Init()
	beego.BConfig.WebConfig.Session.SessionOn=true
}

func main() {
	beego.Run()
}
