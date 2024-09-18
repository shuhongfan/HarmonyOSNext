import InfoTop from '../components/InfoTop'

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 头部标题组件
      InfoTop()

      // 中间
      Column() {}
      .width('100%')
      .layoutWeight(1) // 让容器高度自适应
      .backgroundColor(Color.Orange)

      // 底部
      Row() {}
      .width('100%')
      .height(60)
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}