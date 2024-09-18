// 以前学基础 → 写代码的位置（页面顶部）
@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  // 构建 → 界面
  build() {
    // 布局思路：先排版，再内容
    Column() {
      // 内容
      Text('小说简介')
      Row() {
        Text('都市')
        Text('生活')
        Text('情感')
        Text('男频')
      }
    }
  }
}