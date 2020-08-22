package controllers

import (
	"fmt"
	"garkado-learning/services/models"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	uuid "github.com/satori/go.uuid"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	o := orm.NewOrm()
	u2, err := uuid.NewV4()
	user := models.User{Name: u2.String()}
	// insert
	id, err := o.Insert(&user)
	fmt.Printf("ID: %d, ERR: %v\n", id, err)

	var users []*models.User
	num, err := o.QueryTable("user").All(&users)
	fmt.Printf("Returned Rows Num: %s, %s", num, err)

	c.Data["users"] = users

	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}
