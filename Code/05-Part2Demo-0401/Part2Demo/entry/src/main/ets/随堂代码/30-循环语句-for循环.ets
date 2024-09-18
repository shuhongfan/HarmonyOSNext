// for (初始值; 循环条件; 变化量) {
//   重复执行的代码(循环体)
// }

// 需求: 打印 1-10 →  从 1 开始, 循环到 10 结束
// for (let i: number = 1; i <= 10; i++) {
//   console.log('for循环', i)
// }


// 1-10的和, 从1开始,循环到10
let sum = 0
for (let i: number = 1; i <= 10; i++) {
  console.log('for', i)
  sum = sum + i // sum += i
}
console.log('求和', sum)


@Entry
@Component
struct Index {
  build() {

  }
}