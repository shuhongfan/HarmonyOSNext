@Entry
@Component
struct Index {
  build() {
    Column() {
      // 顶部区域
      Row() {
        Image($r('app.media.jd_cancel'))
          .width(20)
        Text('帮助')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      // Logo图标
      Image($r('app.media.jd_logo'))
        .width(250)
        .height(250)

      // 国家/地址 (自己画)
      Row() {
        Text('国家/地址')
          .layoutWeight(1)
          .fontColor('#666')
        Text('中国(+86)')
          .margin({ right: 5 })
          .fontColor('#666')
        Image($r('app.media.jd_right'))
          .width(20)
          .fillColor('#666')
      }
      .width('100%')
      .height(40)
      .backgroundColor('#fff')
      .borderRadius(20)
      .padding({ left: 15, right: 10 })

      // 手机号（输入框）
      TextInput({
        placeholder: '请输入手机号'
      })
        .placeholderColor('#666')
        .height(40)
        .borderRadius(20)
        .backgroundColor('#fff')
        .margin({ top: 20 })

      // 已阅读并同意
      Row() {
        Checkbox()
          .width(10)
          .margin({ top: 7 })
        // 一段文本中，有文本样式需要单独定制，Text 包裹 Span
        Text() {
          Span('我已经阅读并同意')
          Span('《京东隐私政策》').fontColor('#3274f6')
          Span('《京东用户服务协议》').fontColor('#3274f6')
          Span('未注册的手机号将自动创建京东账号')
        }
        .fontSize(12)
        .fontColor('#666')
        .lineHeight(20)
      }
      .alignItems(VerticalAlign.Top)
      .margin({ top: 20 })

      // 登录
      Button('登录')
        .width('100%')
        .backgroundColor('#bf2838')
        .margin({ top: 25 })

      // 新用户注册等链接
      Row({ space: 25 }) {
        Text('新用户注册').fontSize(14).fontColor('#666')
        Text('账户密码登录').fontSize(14).fontColor('#666')
        Text('无法登录').fontSize(14).fontColor('#666')
      }
      .margin({ top: 15 })

      // 填充组件；作用：填充空白区域 （像弹簧）
      Blank()

      // 底部其他登录方式
      Column() {
        Text('其他登录方式')
          .fontColor('#666')
          .height(22)
          .fontSize(14)
          .margin({ bottom: 28 })
        Row() {
          Image($r('app.media.jd_huawei')).width(34)
          Image($r('app.media.jd_wechat')).width(34).fillColor('#56a44a')
          Image($r('app.media.jd_weibo')).width(34).fillColor('#c8493b')
          Image($r('app.media.jd_QQ')).width(34).fillColor('#4ba0e8')
        }
        .width('100%')
        .margin({ bottom: 30 })
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.jd_login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}


