interface Car {
  name: string
  brand: string
}

@Entry
@Component
  // 顶级组件
struct RootComponent {
  @Provide themeColor: string = 'yellow'
  @Provide car: Car = {
    name: '小黄',
    brand: '美团'
  }
  build() {
    Column() {
      Text('顶级组件')
        .fontSize(30)
        .fontWeight(900)
      Text(this.themeColor)
      Text(JSON.stringify(this.car))

      // 二级组件
      ParentComponent()
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
  @Consume themeColor: string
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是二级组件')
        .fontSize(22)
        .fontWeight(900)
      Text(this.themeColor)

      // 内层子组件
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
  @Consume themeColor: string
  @Consume car: Car
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是内层组件' + this.themeColor)
        .fontSize(20)
        .fontWeight(900)
        .onClick(() => {
          // this.themeColor = 'orange'
          this.car.name = '小绿'
        })
      Text(JSON.stringify(this.car))
    }
    .backgroundColor('#bf94e4')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)

  }
}