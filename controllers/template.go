package controllers

import (
	//"strings"
)

type TemplateController struct {
	BaseController
}

func (c *TemplateController) Index() {
	c.display2()
}