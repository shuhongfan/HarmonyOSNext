import { router } from '@kit.ArkUI'

@Entry
@Component
struct DetailPage {
  build() {
    Column() {
      Text('详情页面')
        .fontSize(80)
      Button('跳转')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/EditPage'
          }, router.RouterMode.Single)
        })
      Button('获取页面栈长度')
        .onClick(() => {
          AlertDialog.show({
            message: router.getLength()
          })
        })
    }
  }
}