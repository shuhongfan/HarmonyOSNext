// 字符串拼接 + 拼串
let name: string = '吕布'
let age: number = 18
console.log('简介信息:', '姓名' + name)
console.log('简介信息:', '年纪' + age)

// 注意点: + 两边只要有字符串, 就是拼串的作用 (如果两边都是数字, 就是计算求和的作用)
let num1: number = 100
let num2: number = 200
console.log('总数', num1 + num2)


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