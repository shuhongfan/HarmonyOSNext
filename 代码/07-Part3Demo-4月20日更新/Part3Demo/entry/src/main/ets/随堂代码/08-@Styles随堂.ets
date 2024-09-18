// 1. 全局定义
@Styles function commonStyles () {
  .width(100)
  .height(100)
}

@Entry
@Component
struct StylesDemo {
  @State message: string = '@styles';
  @State bgColor: ResourceColor = Color.Gray

  // 2. 组件内定义(才能通过this访问到自己的状态)
  @Styles setBg() {
    .backgroundColor(this.bgColor)
    .onClick(() => {
      this.bgColor = Color.Green
    })
  }

  build() {
    Column({ space: 10 }) {
      Text(this.message)
        .fontColor(Color.White)
        .commonStyles()
        .setBg()

      Column() {}
        .commonStyles()
        .setBg()

      Button('按钮')
        .commonStyles()
        .setBg()
    }
    .width('100%')
    .height('100%')
  }


}