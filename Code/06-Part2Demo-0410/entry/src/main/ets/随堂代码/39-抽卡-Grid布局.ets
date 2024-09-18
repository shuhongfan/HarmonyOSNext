@Entry
@Component
struct Index {
  build() {
    // Grid布局的基本使用: 规则的行列布局中非常常见, 3行4列
    Grid() {
      ForEach([1,2,3,4,5,6,7,8,9,10,11,12], () => {
        GridItem() {
          Column() {

          }
          .width('100%')
          .height('100%')
          .backgroundColor(Color.Green)
          .border({ width: 1 })
        }
      })
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr')
    .columnsGap(5)
    .rowsGap(5)
    .width('100%')
    .height(500)
    .backgroundColor(Color.Pink)
  }
}