let money: string = '10000'
let money2: number = 500

// + 的两端, 只要有字符串, 就是拼接
// 需要是计算, 必须都是数字 => 将字符串类型, 转成数字
// console.log('总工资', Number(money) + money2)

let str1: string = '1.1'
let str2: string = '1.9'
let str3: string = '1.99a'
let str4: string = 'a'

// 转数字类型
// 1. Number(变量) 原样转数字
console.log('Number', Number(str1)) // 1.1
console.log('Number', Number(str2)) // 1.9
console.log('Number', Number(str3)) // NaN
console.log('Number', Number(str4)) // NaN

// 2. parseInt(变量) 去掉小数部分(取整)
console.log('parseInt', parseInt(str1)) // 1
console.log('parseInt', parseInt(str2)) // 1
console.log('parseInt', parseInt(str3)) // 1
console.log('parseInt', parseInt(str4)) // NaN

// 3. parseFloat(变量) 保留小数部分
console.log('parseFloat', parseFloat(str1)) // 1.1
console.log('parseFloat', parseFloat(str2)) // 1.9
console.log('parseFloat', parseFloat(str3)) // 1.99
console.log('parseFloat', parseFloat(str4)) // NaN

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