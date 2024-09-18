@Preview
@Component
export struct HelloCom {
  build() {
    Row() {
      Text('自定义组件')
      Button('按钮')
    }
    .width(200)
    .height(50)
    .backgroundColor(Color.Orange)
  }
}