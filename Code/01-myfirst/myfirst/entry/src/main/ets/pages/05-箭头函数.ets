// 需求1：
// 用箭头函数，包裹打印五角星的代码，实现多次打印
// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')
// let star = () => {
//   console.log('五角星', '☆')
//   console.log('五角星', '☆☆')
//   console.log('五角星', '☆☆☆')
//   console.log('五角星', '☆☆☆☆')
//   console.log('五角星', '☆☆☆☆☆')
// }
// star()
// star()
// star()


// 需求2：
// 用箭头函数，完成计算
// 传入 价格 和 数量，返回 计算的结果
// 1. 苹果 2元/斤， 买了3斤，多少钱？
// 2. 香蕉 4元/斤， 买了4斤，多少钱？
let buy = (price: number, weight: number) => {
  // 1. 计算数据
  let result: number = price * weight
  // 2. 返回计算的结果
  return result
}
let apple: number = buy(2, 3)
console.log('苹果', apple)

let banana: number = buy(4, 4)
console.log('香蕉', banana)






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