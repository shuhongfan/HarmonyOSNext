@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      // 1. 正圆 （头像）
      Image($r('app.media.cat'))
        .width(100)
        .height(100)
        .borderRadius(50)

      // 2. 胶囊按钮 (左右半圆)
      Text('今天还没打卡呦~')
        .width(240)
        .height(60)
        .borderRadius(30)
        .backgroundColor(Color.Pink)
        .margin({ top: 20 })
    }
    .padding(20)
  }
}


