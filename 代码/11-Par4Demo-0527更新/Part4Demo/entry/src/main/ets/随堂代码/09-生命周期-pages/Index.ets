import { router } from '@kit.ArkUI'

@Component
struct SonCom {
  aboutToAppear(): void {
    console.log('SonCom - aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('SonCom - aboutToDisappear')
  }
  build() {
    Column() {
      Text('我是子组件')
    }
    .width(200)
    .height(200)
    .border({ width: 3 })
    .margin(20)
  }
}

@Entry
@Component
struct LiteFunc01 {
  @State show: boolean = true
  aboutToAppear(): void {
    console.log('LitePage - aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('LitePage - aboutToDisappear')
  }
  build() {
    Column() {
      Text('组件的生命周期')
        .fontSize(40)
      Button('切换子组件显示')
        .onClick(() => {
          this.show = !this.show
        })
      if (this.show) {
        SonCom()
      }
      Button('跳转页面').onClick(() => {
        router.pushUrl({
          url: 'pages/LoginPage'
        })
      })
    }
  }
}