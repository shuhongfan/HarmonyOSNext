// 需求1： 求出下列数组元素的 累加和
// [22, 3, 44, 55, 80]
// let sum: number = 0
// let arr: number[] = [22, 3, 44, 55, 80]
//
// for (let item of arr) {
//   // console.log('每一项', item)
//   sum = sum + item
// }
// console.log('结果', sum)


// 需求2：筛选 数组中 大于等于10 的 元素，收集到一个新数组中
// [22, 3, 44, 55, 80, 10, 11, 5, -1]
// let arr: number[] = [22, 3, 44, 55, 80, 10, 11, 5, -1]
// let newArr: number[] = []
//
// // 遍历arr, 符合条件, push到newArr里面去
// for (let item of arr) {
//   if (item >= 10) {
//     newArr.push(item)
//   }
// }
// console.log('新数组', newArr)



// 需求3：数组去0，将数组中 不是0 的项收集到一个新数组中
// [22, 3, 0, 55, 0, 0, 11, 5, 0]
let arr: number[] = [22, 3, 0, 55, 0, 0, 11, 5, 0]
let newArr: number[] = []

for (let num of arr) {
  if (num != 0) {
    newArr.push(num)
  }
}
console.log('新数组', newArr)


@Entry
@Component
struct Index {
  build() {

  }
}