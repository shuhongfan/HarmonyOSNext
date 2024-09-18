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

    // Flex布局：伸缩布局。当子盒子的总和溢出父盒子，默认进行压缩显示。
    // 4. 换行 wrap
    //    FlexWrap.Wrap 换行
    //    FlexWrap.NoWrap 不换行
    Flex({
      wrap: FlexWrap.Wrap
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
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue })
      Text()
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({ width: 1, color: Color.Blue })
    }
    .width(300)
    .height(300)
    .backgroundColor('#5f9a5c')
  }
}