// 按需导出
// 多个特性, 逐个 export 按需导出
// export let name1: string = '刘备'
// export let price: number = 9.98
// export let sayHi = () => {
//   console.log('打招呼')
// }

let name1: string = '刘备'
let name2: string = '张飞'
let name3: string = '关羽'

let price: number = 9.98
let price2: number = 10.1

let sayHi = () => {
  console.log('打招呼')
}
let run = () => {
  console.log('跑步')
}

// 一次性将多个特性, 进行导出
export {
  name1, name2, name3,
  price, price2,
  sayHi, run
}

