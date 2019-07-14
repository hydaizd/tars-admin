package controllers

import (
	"github.com/astaxie/beego"
	"strings"
)

const (
	SUCCESS_CODE = 0
	ERROR_CODE  = 1
)

type BaseController struct {
	beego.Controller
	controllerName string
	actionName     string
	userId         int
	userName       string
	loginName      string
}

//前期准备(方法重写)
func (c *BaseController) Prepare() {
	controllerName, actionName := c.GetControllerAndAction()

	c.controllerName = strings.ToLower(controllerName[:len(controllerName)-10])
	c.actionName = strings.ToLower(actionName)
}

//加载模板
func (c *BaseController) display1(tpl ...string) {
	var tplName string
	if len(tpl) > 0 {
		tplName = strings.Join([]string{tpl[0], "tpl"}, ".")
	} else {
		tplName = c.controllerName + "/" + c.actionName + ".tpl"
	}

	//beego会首先解析TplName指定的文件，获取内容赋值给LayoutContent，然后最后渲染layout.html文件
	c.Layout = "main.server.tpl"
	c.TplName = tplName
}

//加载模板
func (c *BaseController) display2(tpl ...string) {
	var tplName string
	if len(tpl) > 0 {
		tplName = strings.Join([]string{tpl[0], "tpl"}, ".")
	} else {
		tplName = c.controllerName + "/" + c.actionName + ".tpl"
	}

	//beego会首先解析TplName指定的文件，获取内容赋值给LayoutContent，然后最后渲染layout.html文件
	c.Layout = "main.operation.tpl"
	c.TplName = tplName
}

// 判断是否POST提交
func (c *BaseController) isPost() bool {
	return c.Ctx.Request.Method == "POST"
}

//ajax返回结果
func (c *BaseController) ajaxResult(message interface{}, code int) {
	result := make(map[string]interface{})
	result["code"] = code
	result["message"] = message
	c.Data["json"] = result

	c.ServeJSON()
	c.StopRun()
}

// 重定向
func (c *BaseController) redirect(url string) {
	c.Redirect(url, 302)
	c.StopRun()
}
