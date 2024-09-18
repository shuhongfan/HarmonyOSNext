@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Image($r('app.media.m_user'))
        .width(100)
      Text('大王叫我来巡山')
        .fontWeight(700)
        .margin({
          top: 10,
          bottom: 40
        })

      Button('QQ登录')
        .width('100%')
        .margin({
          bottom: 10
        })
      Button('微信登录')
        .width('100%')
        .backgroundColor('#ddd')
        .fontColor('#000')
    }
    .width('100%')
    .padding(30)
  }
}
