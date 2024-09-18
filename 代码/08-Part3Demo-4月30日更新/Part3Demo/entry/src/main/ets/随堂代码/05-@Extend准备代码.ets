@Entry
@Component
struct Extends_demo {
  @State message: string = '@Extend-扩展组件(样式,事件)';

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Swiper() {
        Text('1')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Orange)
          .fontColor(Color.White)
          .fontSize(30)

          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 1'
            })
          })
        Text('2')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Green)
          .fontColor(Color.White)
          .fontSize(30)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 2'
            })
          })
        Text('3')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Gray)
          .fontColor(Color.White)
          .fontSize(30)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 3'
            })
          })
      }
      .width('100%')
      .height(160)
    }
    .width('100%')
    .height('100%')
  }
}