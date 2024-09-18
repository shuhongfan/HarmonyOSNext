@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text('待完善')
        .fontColor(Color.Red)
        .padding(5)
        .border({
          width: 1, // 宽度（必须）
          color: Color.Red, // 颜色
          style: BorderStyle.Dashed // 样式(实线、虚线、点线)
        })
        .margin({ bottom: 20 })

      Text('单边框')
        .padding(5)
        // 单边框，可以通过 left right bottom top 配置四个方向边框
        .border({
          width: { left: 1, right: 2 },
          color: { left: Color.Red, right: Color.Green },
          style: {
            left: BorderStyle.Dashed,
            right: BorderStyle.Dotted
          }
        })
    }
    .padding(20)
  }
}


