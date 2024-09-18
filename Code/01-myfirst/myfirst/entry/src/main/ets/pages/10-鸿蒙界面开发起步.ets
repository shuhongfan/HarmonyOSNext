// 以前学基础 → 写代码的位置（页面顶部）

@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  // 构建 → 界面
  build() {
    // 行
    Row() {
      // 列
      Column() {
        // 文本  函数名(参数)  对象.方法名(参数)  枚举名.常量名
        Text(this.message)
          .fontSize(40) // 设置文本的文字大小
          .fontWeight(FontWeight.Bolder) // 设置文本的粗细
          .fontColor(Color.Red) // 设置文本的颜色
      }
      .width('100%')
    }
    .height('100%')
  }
}