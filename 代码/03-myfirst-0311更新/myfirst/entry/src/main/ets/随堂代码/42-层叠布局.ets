@Entry
@Component
struct Index {
  build() {
    // 层叠布局
    Stack({
      alignContent: Alignment.Bottom
    }) {
      Text('大儿子')
        .width(250)
        .height(250)
        .backgroundColor(Color.Green)
        .zIndex(3)
      Text('二儿子')
        .width(150)
        .height(150)
        .backgroundColor(Color.Orange)
        .zIndex(4)
      Text('三儿子')
        .width(50)
        .height(50)
        .backgroundColor(Color.Yellow)
        .zIndex(5)
    }
    .width(300)
    .height(600)
    .backgroundColor(Color.Pink)
  }
}