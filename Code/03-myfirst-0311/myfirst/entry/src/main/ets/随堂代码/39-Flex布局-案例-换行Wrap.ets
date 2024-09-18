@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('阶段选择')
        .fontSize(30)
        .fontWeight(700)
        .padding(15)
        .width('100%')
      Flex({
        wrap: FlexWrap.Wrap
      }) {
        Text('ArkUI').margin(5).padding(10).backgroundColor('#f1f1f1')
        Text('ArkTS').margin(5).padding(10).backgroundColor('#f1f1f1')
        Text('界面开发').margin(5).padding(10).backgroundColor('#f1f1f1')
        Text('系统能力').margin(5).padding(10).backgroundColor('#f1f1f1')
        Text('权限控制').margin(5).padding(10).backgroundColor('#f1f1f1')
        Text('元服务').margin(5).padding(10).backgroundColor('#f1f1f1')
      }
    }
  }
}