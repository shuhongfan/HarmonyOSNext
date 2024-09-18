// 分支语句 - if 语句
// 1. 单分支 (满足条件, 就会执行一段代码)
// if (逻辑条件) {
//   条件成立时执行的代码
// }
// 2. 双分支 (满足条件, 会执行A代码, 不满足条件, 会执行B代码)
// if (逻辑条件) {
//   条件成立时执行的代码
// }
// else {
//   条件不成立时执行的代码
// }

let score: number = 92

if (score >= 90) {
  console.log('奖励', '一台游戏机')
}
else {
  console.log('惩罚', '写个检讨, 分析出错原因')
}



@Entry
@Component
struct Index {
  build() {
    
  }
}