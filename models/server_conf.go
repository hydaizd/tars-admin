package model

type ServerConf struct {
    UserId       int32  `xorm:"not null pk autoincr comment('用户ID') BIGINT(20)"`
    RoleId       int32  `xorm:"not null comment('角色ID') BIGINT(20)"`
    Phone        string `xorm:"not null comment('手机号') VARCHAR(16)"`
    Password     string `xorm:"not null comment('密码') VARCHAR(128)"`
    OpenId       string `xorm:"not null comment('第三方唯一标识') VARCHAR(64)"`
    OpenType     string `xorm:"not null comment('第三方用户类型(wechat微信用户)') VARCHAR(16)"`
    Email        string `xorm:"default 'NULL' comment('绑定邮箱') VARCHAR(32)"`
    Nickname     string `xorm:"not null comment('昵称') VARCHAR(32)"`
    HeadUrl      string `xorm:"default 'NULL' comment('头像') VARCHAR(255)"`
    BannedReason string `xorm:"default 'NULL' comment('禁用原因') VARCHAR(64)"`
    BannedAt     int32    `xorm:"not null comment('禁用时间') INT(10)"`
    CreatedAt    int32    `xorm:"not null comment('创建时间') INT(10)"`
    UpdatedAt    int32    `xorm:"not null comment('更新时间') INT(10)"`
}