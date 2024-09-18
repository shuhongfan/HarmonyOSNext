@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Column() {
        Image($r('app.media.nick'))
          .width('100%')
          .borderRadius({
            topLeft: 5,
            topRight: 5
          })
        Text('今晚吃这个 | 每日艺术分享 No.43')
          .fontWeight(600)
          .fontSize(14)
          .lineHeight(22)
          .height(60)

        // 底部
        Row() {
          // 头像、昵称
          Row({ space: 5 }) {
            Image($r('app.media.user'))
              .width(16)
              .borderRadius(8)
            Text('插画师分享聚集地')
              .fontSize(10)
              .fontColor('#999')
          }
          .layoutWeight(1)

          // 点赞图标、点赞数
          Row({ space: 5}) {
            Image($r('app.media.ic_like'))
              .width(12)
              .fillColor('#999')
            Text('2300')
              .fontSize(10)
              .fontColor('#666')
          }
        }
        .padding({ left: 15, right: 15 })
      }
      .width(200)
      .padding({ bottom: 15 })
      .backgroundColor(Color.White)
      .borderRadius(5)
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}


