@Entry
@Component
struct Index {
  build() {
    Column() {
      // 如果希望内容溢出, 能够滚动
      Scroll() {
        Column({ space: 10 }) {
          ForEach(Array.from({ length: 10 }), (item: string, index) => {
            Text('测试文本' + (index + 1))
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Orange)
              .fontSize(20)
              .fontColor(Color.White)
              .borderRadius(10)
          })
        }
        .padding(10)
        .width('100%')
      }
      .width('100%')
      .height(400)
      .scrollable(ScrollDirection.Vertical) // 设置滚动方向
      .scrollBar(BarState.Auto) // On一直显示 Off一直隐藏 Auto滑动显示
      .scrollBarColor(Color.Blue) // 滚动条颜色
      .scrollBarWidth(5) // 滚动条宽度
      .edgeEffect(EdgeEffect.Spring) // 滑动效果
    }
  }
}