@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text('我是内容文本')
        .fontColor(Color.White)
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        // backgroundImage(加载的背景图片, 是否平铺ImageRepeat枚举)
        .backgroundImage($r('app.media.flower'), ImageRepeat.XY )
    }
    .padding(20)
  }
}


