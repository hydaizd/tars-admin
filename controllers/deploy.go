package controllers

import (
	//"strings"
)

type DeployController struct {
	BaseController
}

func (c *DeployController) Index() {
	c.display2()
}