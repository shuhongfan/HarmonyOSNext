// 遍历数组: 利用循环, 依次按顺序访问数组的每一项
let names: string[] = ['大强', '老莫', '小龙', '大黑', '小黄']

// 数组的最后一项 names[names.length - 1]
// for (let i: number = 0; i < names.length; i++) {
//   console.log('名字是', names[i])
// }

for (let item of names) {
  console.log('数组中的每一项', item)
}


@Entry
@Component
struct Index {
  build() {

  }
}