import { router } from '@kit.ArkUI'

@Entry
@Component
struct Login {
  @State username: string = ''
  build() {
    Column() {
      Text('登录页')
        .fontSize(80)
      TextInput({
        text: $$this.username,
        placeholder: '请输入用户名'
      })
      Button('登录到首页').onClick(() => {
        router.pushUrl({
          url: 'pages/Index',
          params: {
            username: this.username,
            msg: '测试消息'
          }
        })
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