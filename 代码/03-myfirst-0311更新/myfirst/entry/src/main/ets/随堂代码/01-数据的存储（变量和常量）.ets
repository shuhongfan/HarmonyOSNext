// console.log('消息说明', '打印的内容')
// console.log('我说', '学鸿蒙，来黑马')

// 变量的存储和修改（string number boolean）
// 1. 变量存储
// 1.1 字符串 string 类型
// 注意点1：字符串需要用引号引起来（单引双引号）'字符串' "字符串"
// 注意点2：存储的时候，后面的存的内容，需要和前面的类型对应
let title: string = '巨无霸汉堡'
console.log('字符串title', title)

// 1.2 数字 number 类型
let age: number = 18
console.log('年纪age', age)

// 1.3 布尔 boolean 类型(true真，false假)
let isLogin: boolean = false
console.log('是否登录成功', isLogin)

// 2. 变量的修改
age = 40
console.log('年纪age', age)

// 常量
const PI: number = 3.14
const companyName: string = '华为'
console.log('公司名：', companyName)
console.log('PI:', PI)


// 命名规则：
// ① 只能包含数字、字母、下划线、$，不能以数字开头 -- 重点
// let num-1: number = 11 // 错误  特殊字符
// let num_1: number = 11 // 正确
// let num$: number = 200 // 正确
// let num^ : number = 200 // 错误 特殊字符
//
// let num1: number = 11 // 正确
// let 1num: number = 22 // 错误 以数字开头

// ② 不能使用内置关键字或保留字 （比如 let、const）
// let let: number = 100
// let const: string = 'abc'

// ③ 严格区分大小写
// let myName: string = '吴彦祖'
// // let myName: string = '邓超'
// let MyName: string = '刘德华'
// console.log('myName', myName)
// console.log('MyName', MyName)



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