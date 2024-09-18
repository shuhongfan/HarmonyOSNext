@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text('没有圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Pink)
        .margin({ bottom: 30 })

      // 添加圆角：
      // 1. .borderRadius(数值) 四个角圆角相同
      // 2. .borderRadius({ 方位词: 值 }) 单独给某个角设置圆角
      Text('添加圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Orange)
        // .borderRadius(15) // 通过不同数值，可以设置不同大小的圆角
        // .borderRadius({
        //   topLeft: 10,
        //   topRight: 20,
        //   bottomRight: 30,
        //   bottomLeft: 40
        // })
        .borderRadius({
          topLeft: 20,
          bottomRight: 20
        })
    }
    .padding(20)
  }
}


