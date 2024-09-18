@Entry
@Component
struct Index {
  build() {
    Column() {
      Column({ space: 8}) {
        // 图片
        Image($r('app.media.eyes'))
          .width('100%')
          .borderRadius({topLeft: 6, topRight: 6})
        // 标题文字
        Text('考眼力又来了你能看到几只鸭子？')
          .fontSize(14)
          .lineHeight(18)
          .padding({left: 5, right: 5})
        // 来源和点赞
        Row(){
          Text() {
            ImageSpan($r('app.media.avatar'))
              .width(16)
              .margin({right: 3})
            Span('视野联行眼镜')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }
          Row() {
            Image($r('app.media.ic_love'))
              .margin({right: 3})
              .width(14)
              .fillColor('#7e7e7e')
            Text('8888')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({left: 5, right: 5})
      }
      .width('50%')
    }
    .padding(20)
  }
}