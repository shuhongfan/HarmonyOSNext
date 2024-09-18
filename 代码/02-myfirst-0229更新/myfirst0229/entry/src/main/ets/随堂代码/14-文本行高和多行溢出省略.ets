@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  // 构建 → 界面
  build() {
    Column() {
      Text('HarmonyOS开发初体验')
        .width('100%')
        .lineHeight(50)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Text('方舟开发框架（简称ArkUI）为HarmonyOS应用的UI开发提供了完整的基础设施，包括简洁的UI语法、丰富的UI功能（组件、布局、动画以及交互事件），以及实时界面预览工具等，可以支持开发者进行可视化界面开发。')
        .width('100%')
        .lineHeight(24)
        // 重点记忆：文字溢出显示省略号
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        // 必须配合maxLines才有效果
        .maxLines(2)
    }
    .width('100%')
    .padding(20)
  }
}

