import { router } from '@kit.ArkUI'
import Want from '@ohos.app.ability.Want'
import { common } from '@kit.AbilityKit'
import { BusinessError } from '@kit.BasicServicesKit'

// 从一个Ability中唤起另一个Ability (同模块)
// 1. 准备 want 作为 UIAbility 的启动参数
// 2. 利用上下文对象 context, 调用 startAbility 传入 want 启动
@Entry
@Component
struct Index {
  // 获取上下文对象
  context = getContext(this) as common.UIAbilityContext

  build() {
    Column() {
      Column() {
        Text('HelloWorld-首页-聊天应用')
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/LoginPage'
            })
          })
        // want
        Button('买菜功能 - 唤起另一个ability')
          .onClick(() => {
            // 1. 准备 want (参数信息)
            let wantInfo: Want = {
              deviceId: '', // 空表示本设备
              bundleName: 'com.example.part4demo', // AppScope/app.json 确认
              moduleName: 'entry', // 模块名
              abilityName: 'TwoAbility', // src/main/module.json5
              parameters: {
                info: '来自entryAbility'
              }
            }
            // 2. 利用context startAbility 调起 UIAbility
            //    返回一个promise对象
            this.context.startAbility(wantInfo)
              .then(() => {
                console.log('startAbility 成功')
              })
              .catch((error: BusinessError) => {
                console.log('启动Ability 失败', error)
              })
          })
        Button('Test测试 - 唤起另一个模块的ability')
          .onClick(() => {
            // 1. 准备 want (参数信息)
            let wantInfo: Want = {
              deviceId: '', // 空表示本设备
              bundleName: 'com.example.part4demo', // AppScope/app.json 确认
              moduleName: 'TestModule', // 模块名
              abilityName: 'TestModuleAbility', // src/main/module.json5
              parameters: {
                info: '来自entryAbility'
              }
            }
            // 2. 利用context startAbility 调起 UIAbility
            //    返回一个promise对象
            this.context.startAbility(wantInfo)
              .then(() => {
                console.log('startAbility 成功')
              })
              .catch((error: BusinessError) => {
                console.log('启动Ability 失败', error)
              })
          })
      }
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}