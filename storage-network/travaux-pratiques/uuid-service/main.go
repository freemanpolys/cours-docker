package main

import (
	"github.com/astaxie/beego/orm"
	"garkado-learning/services/models"
	_ "garkado-learning/services/routers"
	"github.com/astaxie/beego"
)
import _ "github.com/go-sql-driver/mysql"

func init() {
	// register model
	orm.RegisterModel(new(models.User))
	// set default database
	dbuser := beego.AppConfig.String("dbuser")
	dbpass := beego.AppConfig.String("dbpass")
	dbhost := beego.AppConfig.String("dbhost")
	dbname := beego.AppConfig.String("dbname")
	sqlcon := dbuser + ":" + dbpass + "@tcp("+ dbhost + ")/" + dbname + "?charset=utf8"

	orm.RegisterDataBase("default", "mysql", sqlcon, 30)
	orm.RunSyncdb("default", false, true)

}
func main() {
	beego.Run()
}

