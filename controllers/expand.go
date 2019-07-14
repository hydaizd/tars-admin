package controllers

import (
	//"strings"
)

type ExpandController struct {
	BaseController
}

func (c *ExpandController) Index() {
	c.display2()
}