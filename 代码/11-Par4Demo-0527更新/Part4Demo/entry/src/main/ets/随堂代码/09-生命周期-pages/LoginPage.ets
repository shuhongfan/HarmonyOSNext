import { router } from '@kit.ArkUI'

@Component
struct LoginCom {
  aboutToAppear(): void {
    console.log('LoginCom - aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('LoginCom - aboutToDisappear')
  }
  build() {
    Text('登录子组件')
  }
}

@Entry
@Component
struct LoginPage {
  aboutToAppear(): void {
    console.log('LoginPage - aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('LoginPage - aboutToDisappear')
  }
  onPageShow(): void {
    console.log('LoginPage - onPageShow')
  }
  onPageHide(): void {
    console.log('LoginPage - onPageHide')
  }
  onBackPress(): boolean | void {
    // 自己手写返回的代码 → 将来定制返回的逻辑
    router.back()
    return true
  }

  @State message: string = '登录';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        LoginCom()
      }
      .width('100%')
    }
    .height('100%')
  }
}