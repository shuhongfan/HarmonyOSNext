@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Button('点我,显示对话框')
          .onClick(() => {
            // console.log('消息:', '你好点击事件')
            // 弹个框
            AlertDialog.show({
              message: '你好~ 这是个弹框'
            })
          })
        Text('我是文本')
          .onClick(() => {
            // 弹个框
            AlertDialog.show({
              message: '你好~ 我是文本组件'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}