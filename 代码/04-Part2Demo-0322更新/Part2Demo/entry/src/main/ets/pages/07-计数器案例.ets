@Entry
@Component
struct Index {
  // [组件的]状态变量  this.xxx
  @State count: number = 1

  build() {
    Row() {
      Button('-')
        .onClick(() => {
          this.count = this.count - 1
        })
      Text(this.count.toString()).margin(10)
      Button('+')
        .onClick(() => {
          // 只要修改了状态变量, 自动触发界面(视图)的更新
          this.count = this.count + 1
        })
    }
    .padding(20)
  }
}