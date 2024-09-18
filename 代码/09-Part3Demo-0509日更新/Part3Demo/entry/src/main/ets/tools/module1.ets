interface Person {
  name: string
  age: number
}

// 一个ets文件, 就是一个模块, 每个模块之间独立
let num: number = 10
let person: Person = {
  name: 'jack',
  age: 18
}

// 默认导出 (导出一个值)
export default person