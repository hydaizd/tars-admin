package routers

import (
	"tars-admin/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})

    beego.AutoRouter(&controllers.AuthController{})
    beego.AutoRouter(&controllers.ServerController{})
    beego.AutoRouter(&controllers.DeployController{})
    beego.AutoRouter(&controllers.ExpandController{})
    beego.AutoRouter(&controllers.TemplateController{})
}
