import { router } from '@kit.ArkUI'

interface ParamsObj {
  username: string
  msg: string
}

@Entry
@Component
struct Index {
  @State myName: string = ''
  // 一进入页面, 就会执行的函数 => 生命周期函数
  aboutToAppear(): void {
    console.log('传递过来的数据', JSON.stringify(router.getParams()))
    const params = router.getParams() as ParamsObj
    this.myName = params.username
  }
  build() {
    Column() {
      Text('首页' + this.myName)
        .fontSize(60)
      Button('去编辑页')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/EditPage'
          })
        })
      Button('去详情页')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/DetailPage'
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