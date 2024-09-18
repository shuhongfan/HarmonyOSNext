// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')
//
// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')
//
// console.log('五角星', '☆')
// console.log('五角星', '☆☆')
// console.log('五角星', '☆☆☆')
// console.log('五角星', '☆☆☆☆')
// console.log('五角星', '☆☆☆☆☆')


// 1. 定义函数 (只是定义了函数，但是没有使用，不会执行内部的代码段)
function star() {
  console.log('五角星', '☆')
  console.log('五角星', '☆☆')
  console.log('五角星', '☆☆☆')
  console.log('五角星', '☆☆☆☆')
  console.log('五角星', '☆☆☆☆☆')
}
// 2. 调用函数（使用函数）
//    函数名()
star()
star()
star()


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