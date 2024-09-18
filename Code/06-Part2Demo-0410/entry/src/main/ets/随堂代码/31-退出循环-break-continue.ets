// 退出循环:
// 1. break: 终止整个循环 (后面的循环不执行了)
// 2. continue: 退出当前这一次循环, 继续执行下一次循环 (包子当前这个不吃了, 吃下一个)

// 1. 一共8个包子, 吃到第5个, 饱了
// for (let i: number = 1; i <= 8; i++) {
//   if (i == 5) {
//     console.log('拿起了第5个包子, 发现吃不动了')
//     // 终止当前的循环 (本次循环后面的代码不执行了, 且后续循环的代码也不执行了, 跳出循环)
//     break
//   }
//   console.log('吃包子:', `第${i}个`)
// }
//
// console.log('这是循环外的代码')


// 2. 一个8个包子, 吃到第5个, 坏了
for (let i: number = 1; i <= 8; i++) {
  if (i == 5) {
    console.log('拿起了第5个包子, 发现坏了')
    // 当前这次循环不继续执行了, 继续执行下一次循环
    continue
  }
  console.log('吃包子:', `第${i}个`)
}

console.log('这是循环外的代码')


@Entry
@Component
struct Index {
  build() {

  }
}