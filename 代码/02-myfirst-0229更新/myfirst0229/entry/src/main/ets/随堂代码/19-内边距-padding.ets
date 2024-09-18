@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text('小龙女')
        .backgroundColor(Color.Pink)
        // .padding(50) // 四个方向设置同样的内边距
        .padding({
          left: 20,
          top: 30,
          right: 5,
          bottom: 30
        }) //  四个方向单独设置不同的内边距
    }
  }
}

