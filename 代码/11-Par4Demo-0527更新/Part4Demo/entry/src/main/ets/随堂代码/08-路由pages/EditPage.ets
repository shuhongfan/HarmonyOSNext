import { router } from '@kit.ArkUI';

@Entry
@Component
struct EditPage {
  @State message: string = '编辑页面';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳转')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/DetailPage'
            }, router.RouterMode.Single)
          })
        Button('获取页面栈长度')
          .onClick(() => {
            AlertDialog.show({
              message: router.getLength()
            })
          })
        Button('清空页面栈')
          .onClick(() => {
            router.clear()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}