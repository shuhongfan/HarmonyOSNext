@Entry
@Component
  // 父组件
struct KnowledgePage {
  @State count: number = 0

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(this.count.toString())
      Button('修改数据')
        .onClick(() => {
        })
      SonComponent()
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#eee')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}


@Component
  // 子组件
struct SonComponent {
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是子组件')
        .fontSize(20)


      Column() {
        Button('修改count')
          .onClick(() => {
          })

      }

    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('80%')
    .margin({ top: 100 })
    .padding(10)
    .borderRadius(10)

  }
}