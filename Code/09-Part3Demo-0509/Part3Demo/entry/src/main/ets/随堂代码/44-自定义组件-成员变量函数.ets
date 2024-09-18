@Component
struct MyPanel {
  // 成员变量 - 数据
  title: string = '默认的大标题'
  extra: string = '查看更多 >'
  // 成员变量 - 函数 - 可以外部传入覆盖的
  getMore = () => {
    AlertDialog.show({
      message: '查看更多'
    })
  }

  // 成员函数 - 不可以外部传入覆盖
  sayHi() {
    AlertDialog.show({
      message: '打招呼, 你好'
    })
  }

  build() {
    Column() {
      Row() {
        Text(this.title).fontSize(18)
        Text(this.extra).fontSize(18)
          .onClick(() => {
            this.getMore()
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      Row() {
        Text('内容部分').fontSize(18)
        Button('按钮')
          .onClick(() => {
            this.sayHi()
          })
      }
      .padding(20)
    }
    .padding(10)
    .width('100%')
    .height(200)
    .margin({ bottom: 20 })
    .borderRadius(10)
    .backgroundColor(Color.White)
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      MyPanel({
        title: '我的订单',
        extra: '全部订单 > ',
        getMore() {
          AlertDialog.show({
            message: '点击了全部订单'
          })
        }
      })
      MyPanel({
        title: '小米有品重酬',
        extra: '7款重酬中 >',
        getMore() {
          AlertDialog.show({
            message: '查看7款重酬'
          })
        }
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .padding(20)
  }
}
