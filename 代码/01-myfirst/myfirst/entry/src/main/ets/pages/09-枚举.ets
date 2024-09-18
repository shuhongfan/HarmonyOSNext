// 需求：利用枚举类型，给变量设置主色
// 取色范围：
// 红色 '#ff0f29'
// 橙色 '#ff7100'
// 绿色 '#30b30e'

// 1. 定义枚举 （定义常量列表）
enum ThemeColor {
  Red = '#ff0f29',
  Orange = '#ff7100',
  Green = '#30b30e'
}

// 2. 给变量设定枚举类型
let color: ThemeColor = ThemeColor.Orange
console.log('color', color)





@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}