package controllers

import (
	//"strings"
)

type ServerController struct {
	BaseController
}

func (c *ServerController) Index() {
	c.display1();
}