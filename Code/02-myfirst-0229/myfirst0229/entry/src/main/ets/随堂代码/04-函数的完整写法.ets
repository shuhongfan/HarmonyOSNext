// 用一个函数，来实现下面的需求，
// 传入 价格 和 数量，返回 计算的结果
// 1. 苹果 2元/斤， 买了3斤，多少钱？
// 2. 香蕉 4元/斤， 买了4斤，多少钱？

function buy(price: number, num: number) {
  console.log('传入的数据', price, num)
  // 1. 处理数据
  let result: number = price * num
  // 2. 返回结果
  return result
}

let apple: number = buy(2, 3)
console.log('苹果', apple)

let banana: number = buy(4, 4)
console.log('香蕉', banana)
// 注意点：形参和实参的数量要统一，一一对应





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