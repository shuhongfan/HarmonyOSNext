import { router } from '@kit.ArkUI';

@Entry
@Component
struct LoginPage {
  @State message: string = '登陆页';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Index'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}