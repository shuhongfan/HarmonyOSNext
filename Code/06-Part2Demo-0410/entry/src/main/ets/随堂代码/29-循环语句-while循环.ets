// while循环: 可以重复的执行一段代码
// while (条件) {
//   需要循环执行的语句
// }

// 死循环: 没有结束条件
// while (true) {
//   console.log('while', '重复执行的代码')
// }

// 实际开发真正需要的, 有次数的循环
// 三要素: 变量初始值; 判断条件; 变化量(变量要变)
// let i: number = 1
// while (i < 10) {
//   console.log('小于10成立', '执行代码', i) // 9
//   i++ // 10
// }

// 需求1: 打印1-100的数字,  1, 2, 3, 4, 5 ... 100
// 三要素: 变量起始值; 判断条件; 变化量;
// let i: number = 1
// while (i <= 100) {
//   console.log('i的值:', i)
//   i++
// }

// let i: number = 100
// while (i >= 1) {
//   console.log('i的值:', i)
//   i--
// }

// 需求2: 打印 1-100 中的偶数
// let i: number = 1
// while (i <= 100) {
//   if (i % 2 === 0) {
//     console.log('i的值:', i)
//   }
//   i++
// }

// 需求3: 计算 1-10 的数字的 累加和,  1 + 2 + 3 + 4 + 5 ... + 10
// 三要素: 变量起始值; 判断条件; 变化量;
let i: number = 1
let sum: number = 0 // 存储累加的结果

while (i <= 10) {
  console.log('需要累加的数字:', i)
  // 每次执行下面这行代码, 就会进行一次累加, 并且更新累加的结果
  sum = sum + i
  i++
}
console.log('累加结果:', sum)


@Entry
@Component
struct Index {
  @State num:number = 1
  build() {
    
  }
}