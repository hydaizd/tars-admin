package controllers

import (
	"strings"
)

type AuthController struct {
	BaseController
}

func (c *AuthController) Login() {
	// 已经登录直接返回登录成功
	if c.userId > 0 {
		c.ajaxResult("登录成功", SUCCESS_CODE)
	} else {
		if c.isPost() {
			username := strings.TrimSpace(c.GetString("username"))
			password := strings.TrimSpace(c.GetString("password"))

			if username != "" && password != "" {
				c.ajaxResult("登录成功", SUCCESS_CODE)
			}
		} else {
			c.TplName = "auth/login.tpl"
		}
	}
}