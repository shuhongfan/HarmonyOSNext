@Entry
@Component
struct Index {
  build() {
    // Flex默认主轴水平往右，交叉轴垂直往下 → Row
    // 1. 主轴方向
    //    direction: FlexDirection.Row / Column
    // 2. 主轴对齐方式
    //    justifyContent: FlexAlign.SpaceAround
    // 3. 交叉轴对齐方式
    //    alignItems: ItemAlign.Stretch / Start / Center / End
    // 单行或者单列的情况，优先还是使用线性布局（本质基于Flex设计的，且还做了性能优化）
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Start
    }) {
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue })
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue })
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue })
    }
    .width('100%')
    .height(600)
    .backgroundColor('#5f9a5c')
  }
}