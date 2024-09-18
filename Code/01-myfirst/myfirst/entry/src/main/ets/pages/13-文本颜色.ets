@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // 1. 演示文字颜色 (枚举 + 十六进制)
    // Column() {
    //   Text('吕布')
    //     .fontSize(30)
    //     .fontColor('#df3c50')
    //     // .fontColor(Color.Orange)
    // }

    // 2. 综合练习：今日头条置顶新闻
    //    思路：排版 → 内容 → 美化
    Column() {
      Text('学鸿蒙，就来黑马程序员~')
        .width('100%')
        .height(40)
        .fontSize(24)
      Row() {
        Text('置顶  ')
          .fontColor('#df3c50')
        Text('新华社  ')
          .fontColor('#a1a1a1')
        Text('4680评论')
          .fontColor('#a1a1a1')
      }
      .width('100%')
    }
    .width('100%')
  }
}