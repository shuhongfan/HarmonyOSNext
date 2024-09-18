@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
        .margin(5)
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
        .margin(5)
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({ width: 2 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    // 设置排布主方向的对齐方式（主轴）
    // 1. Start  （排布主方向）主轴起始位置对齐
    // 2. Center  主轴居中对齐
    // 3. End     主轴结束位置对齐
    // 4. SpaceBetween 贴边显示，中间的元素均匀分布间隙
    // 5. SpaceAround 间隙环绕  0.5  1  1  1  0.5 的间隙分布，靠边只有一半的间隙
    // 6. SpaceEvenly 间隙均匀环绕，靠边也是完整的一份间隙
    // justifyContent(枚举FlexAlign)  ctrl+p  cmd+p
    // .justifyContent(FlexAlign.Center)
    // .justifyContent(FlexAlign.SpaceBetween)
    // .justifyContent(FlexAlign.SpaceAround)
    .justifyContent(FlexAlign.SpaceEvenly)
  }
}


