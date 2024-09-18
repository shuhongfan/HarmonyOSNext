// @Extend(组件名)
// function 函数名 (参数, 参数2) {
//
// }

@Extend(Text)
function textFn () {
  .fontSize(20)
  .fontWeight(FontWeight.Bold)
}

@Extend(Text)
function bannerItem (bgColor: ResourceColor, msg: string) {
  .textAlign(TextAlign.Center)
  .backgroundColor(bgColor)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}


@Entry
@Component
struct Extends_demo {
  @State message: string = '@Extend-扩展组件(样式,事件)';

  build() {
    Column() {
      Text(this.message)
        .textFn()

      Swiper() {
        Text('1')
          .bannerItem(Color.Orange, '轮播图1号')
        Text('2')
          .bannerItem(Color.Brown, '轮播图2号')
        Text('3')
          .bannerItem(Color.Green, '轮播图3号')
      }
      .width('100%')
      .height(160)
    }
    .width('100%')
    .height('100%')
  }
}