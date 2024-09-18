// 数字通常用于计算, 字符串通常用于展示
let money: number = 10000
// 将数字转字符串, toString()  toFixed()
// 1. 数据.toString() 原样转字符串
console.log('toString:', money.toString())

// 2. 数据.toFixed(保留几位小数)  四舍五入
console.log('toFixed:', money.toFixed())
console.log('toFixed:', money.toFixed(2))

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Text('工资发了: ¥' + money.toFixed(2))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}