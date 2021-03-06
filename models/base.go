package models

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	//"fmt"
)

func Init(){
	dbhost := beego.AppConfig.String("dbhost")
	dbport := beego.AppConfig.String("dbport")
	dbuser := beego.AppConfig.String("dbuser")
	dbpassword := beego.AppConfig.String("dbpassword")
	dbname := beego.AppConfig.String("dbname")
	if dbport == "" {
		dbport = "3306"
	}
	dsn := dbuser + ":" + dbpassword + "@tcp(" + dbhost + ":" + dbport + ")/" + dbname + "?charset=utf8&loc=Asia%2FShanghai"
	//fmt.Println(dsn)
	orm.RegisterDriver("mysql", orm.DRMySQL)
	orm.RegisterDataBase("default", "mysql", dsn)
	//orm.RunSyncdb("default", false, true)
	orm.RegisterModel(new(User),new(Admin), new(Address),new(Area),new(Busipartner),new(Category), new(Attribute),new(Brand),new(Goods),new(GoodsAttr),new(GoodsGallery),new(Products),new(VolumePrice))
}

//返回带前缀的表名
func TableName(str string) string {
	return beego.AppConfig.String("dbprefix") + str
}
