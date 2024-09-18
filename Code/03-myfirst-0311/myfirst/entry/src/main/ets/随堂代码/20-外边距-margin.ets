@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Row() {
        Text('刘备')
          .backgroundColor(Color.Orange)
        Text('关羽')
          .backgroundColor(Color.Pink)
          // .margin(30)  // 一次性设置四个方向的margin外边距
          .margin({
            left: 30,
            right: 50
          }) // 单独设置不同方向的 margin 外边距
        Text('张飞')
          .backgroundColor(Color.Green)
      }

      Column() {
        Text('刘备')
          .backgroundColor(Color.Orange)
        Text('关羽')
          .backgroundColor(Color.Pink)
          .margin({
            top: 30,
            bottom: 50
          })
        Text('张飞')
          .backgroundColor(Color.Green)
      }
    }
  }
}

