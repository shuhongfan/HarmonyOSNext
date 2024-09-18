@Component
struct MyCard {
  @BuilderParam tBuilder: () => void = this.tDefaultBuilder
  @BuilderParam cBuilder: () => void = this.cDefaultBuilder
  @Builder tDefaultBuilder () {
    Text('我是默认的大标题')
  }
  @Builder cDefaultBuilder () {
    Text('我是默认的内容')
  }

  build() {
    // 卡片组件
    Column() {
      // 标题部分
      Row() {
        this.tBuilder()
      }
      .height(30)
      .width('100%')
      .border({ color: '#ccc', width: { bottom: 1 }})
      .padding({ left: 10 })
      // 内容部分
      Row() {
        this.cBuilder()
      }
      .width('100%')
      .padding(10)
    }
    .width('100%')
    .height(100)
    .backgroundColor(Color.White)
    .borderRadius(10)
    .justifyContent(FlexAlign.Start)
  }
}


@Entry
@Component
struct Index {
  @Builder ftBuilder () {
    Text('我是传入的大标题结构')
  }
  @Builder fcBuilder () {
    Text('我是内容部分')
    Text('我是内容部分')
    Text('我是内容部分')
  }

  build() {
    Column({ space: 10 }) {
      MyCard()
      MyCard({
        tBuilder: this.ftBuilder,
        cBuilder: this.fcBuilder
      })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#ccc')
  }
}