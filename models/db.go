/*
* @Author: daizd
* @Date:   2019-07-13 15:51
* @Last Modified by:   Bee
* @Last Modified time: 2019-07-13 15:51
 */

package models

import (
	"net/url"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type dbConfig struct {
    Host            string
    Port            int
    User            string
    Password        string
    Name            string
    TimeZone        string
}

var dbCfg *dbConfig

// 创建与数据库交互的主会话
func (cfg dbConfig) InitConn() {
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%d)/%s?charset=utf8", cfg.User, cfg.Password, cfg.Host, cfg.Port, cfg.Name)
	if cfg.TimeZone != "" {
		var buffer bytes.Buffer

		buffer.WriteString(dsn)
		buffer.WriteString("&loc=")
		buffer.WriteString(url.QueryEscape(cfg.TimeZone))
		dsn = buffer.String()
	}

	orm.RegisterDataBase("default", "mysql", dsn)

 	if beego.AppConfig.String("runmode") == "dev" {
		orm.Debug = true
	}
}

func InitConfig() *dbConfig {
    dbCfg := new(dbConfig)
    dbCfg.Host = beego.AppConfig.String("db.host")
    dbCfg.Port, _ = beego.AppConfig.String("db.port")
    dbCfg.User = beego.AppConfig.String("db.user")
    dbCfg.Password = beego.AppConfig.String("db.password")
    dbCfg.Name = beego.AppConfig.String("db.name")
    dbCfg.TimeZone = beego.AppConfig.String("db.timezone")
 
    return dbCfg
}

func TableName(name string) string {
	return beego.AppConfig.String("db.prefix") + name
}