@Component
struct MyCom {
  @State count: number = 1
  build() {
    Row() {
      Text(this.count.toString())
        .fontColor(Color.White)
        .margin(10)
      Button('按钮')
        .onClick(() => {
          this.count++
        })
    }
  }
}

@Component
struct MyHeader {
  build() {
    Row() {
      Text('我是头部')
        .fontColor(Color.White)
    }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Brown)
  }
}

@Component
struct MyMain {
  build() {
    Column() {
      // 将相同的业务逻辑, 封装成一个通用的组件
      MyCom()
      MyCom()
      MyCom()
    }
    .layoutWeight(1)
    .width('100%')
    .backgroundColor(Color.Gray)
  }
}

@Component
struct MyFooter {
  build() {
    Row() {
      Text('我是底部')
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Green)
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      MyHeader()
      MyMain()
      MyFooter()
    }
  }
}