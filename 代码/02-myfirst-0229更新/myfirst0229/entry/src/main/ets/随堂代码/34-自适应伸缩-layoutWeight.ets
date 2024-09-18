@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      // layoutWeight 自适应伸缩: 按照[份数权重]，分配[剩余空间]
      Row() {
        Text('左侧')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Pink)
        Text('右侧固定')
          .width(80)
          .height(40)
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')

      Row() {
        Text('老大')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Gray)
        Text('老二')
          .layoutWeight(2)
          .height(40)
          .backgroundColor(Color.Orange)
        Text('老三')
          .layoutWeight(3)
          .height(40)
          .backgroundColor(Color.Pink)
        Text('小宝')
          .width(50)
          .height(40)
          .backgroundColor(Color.Brown)
      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')
      .margin({ top: 30 })

    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}


