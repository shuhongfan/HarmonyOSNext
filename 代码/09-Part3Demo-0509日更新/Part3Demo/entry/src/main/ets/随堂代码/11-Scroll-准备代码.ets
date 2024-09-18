@Entry
@Component
struct Index {
  build() {
    Column() {
      Column({ space: 10 }) {
        ForEach(Array.from({ length: 5 }), (item: string, index) => {
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
  }
}