@Entry
@Component
struct Index {
  build() {
    // position绝对定位：可以控制组件位置，可以实现层叠效果
    // 语法：
    // .position({
    //   x: 50,
    //   y: 50
    // })
    // 特点：
    // 1. 相对于父组件左顶点进行偏移（调整位置）
    // 2. 原本的位置不占了，且可以任意调整位置，不影响其他元素

    // 后面的组件明显层次更高，会盖住前面的组件
    // 需求：不动结构的情况下，调整组件的层级 .zIndex(数字)
    Column() {

      Text('大儿子')
        .width(80)
        .height(80)
        .backgroundColor(Color.Green)
        .zIndex(3)
      Text('二儿子定位')
        .width(80)
        .height(80)
        .backgroundColor(Color.Yellow)
        .position({
          x: 50,
          y: 50
        })
        .zIndex(4)
      Text('三儿子')
        .width(80)
        .height(80)
        .backgroundColor(Color.Orange)
        .zIndex(2)
    }
    .width(300)
    .height(300)
    .backgroundColor(Color.Pink)
  }
}