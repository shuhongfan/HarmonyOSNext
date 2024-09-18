// 算数运算符 + - * / %
console.log('计算结果', 1 + 1)
console.log('计算结果', 2 - 1)
console.log('计算结果', 3 * 5)
console.log('计算结果', 9 / 3)
console.log('取余', 9 % 2) // 4余1
console.log('取余', 9 % 5) // 1余4

// 赋值运算符 =
// +=  -=  *=  /=  %= (本质就是一个简写, 对变量本身进行计算, 计算完再赋值回来)
// let num: number = 200
// num *= 2 // num = num * 2
// console.log('num', num)

let num2: number = 199
num2 %= 100 // num2 = num2 % 100
console.log('num2', num2)

@Entry
@Component
struct Index {
  build() {
    
  }
}