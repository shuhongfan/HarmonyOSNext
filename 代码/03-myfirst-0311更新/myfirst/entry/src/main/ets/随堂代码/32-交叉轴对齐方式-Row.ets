@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // Row的交叉轴的对齐方式（垂直往下的交叉轴）VerticalAlign
    // alignItems(VerticalAlign.Top)  Center  Bottom
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
    .alignItems(VerticalAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}


