@Entry
@Component
  // 顶级组件
struct RootComponent {
  build() {
    Column() {
      Text('顶级组件')
        .fontSize(30)
        .fontWeight(900)

      ParentComponent()
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}


@Component
  // 二级组件
struct ParentComponent {
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是二级组件')
        .fontSize(22)
        .fontWeight(900)

      SonComponent()
    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)

  }
}

@Component
  // 内层组件
struct SonComponent {
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是内层组件')
        .fontSize(20)
        .fontWeight(900)

    }
    .backgroundColor('#bf94e4')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)

  }
}