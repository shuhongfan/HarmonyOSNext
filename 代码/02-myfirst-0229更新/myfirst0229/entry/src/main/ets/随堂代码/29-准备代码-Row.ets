@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
      Row() {
        Text()
          .width(60).height(100)
          .backgroundColor(Color.Pink)
          .border({ width: 2 })
        Text()
          .width(60).height(100)
          .backgroundColor(Color.Pink)
          .border({ width: 2 })
          .margin({ left: 5, right: 5 })
        Text()
          .width(60).height(100)
          .backgroundColor(Color.Pink)
          .border({ width: 2 })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#ccc')
    }
}


