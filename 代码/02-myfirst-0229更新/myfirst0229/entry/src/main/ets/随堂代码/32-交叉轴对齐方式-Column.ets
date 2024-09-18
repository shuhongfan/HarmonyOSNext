@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // Column 交叉轴的对齐方式（水平往右）
    // alignItems(HorizontalAlign.Start)  Center End
    Column() {
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
        .margin({ top: 5, bottom: 5 })
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
    }
    .alignItems(HorizontalAlign.End)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}


