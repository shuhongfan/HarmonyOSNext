// 构造函数语法
// class Food {
//   name: string
//   price: number
//   // 希望不同实例, 有不同的字段初始值 → 构造函数
//   constructor(name: string, price: number) {
//     this.name = name
//     this.price = price
//   }
// }
// let f1: Food = new Food('西兰花', 20)
// console.log('名称:', f1.name, '价格:', f1.price)
//
// let f2: Food = new Food('土豆炖鸡块', 28)
// console.log('名称:', f2.name, '价格:', f2.price)

interface IFood {
  name: string
  price: number
  desc: string
}

class Food {
  name: string
  price: number
  desc: string
  // 希望不同实例, 有不同的字段初始值 → 构造函数
  constructor(paramsObj: IFood) {
    this.name = paramsObj.name
    this.price = paramsObj.price
    this.desc = paramsObj.desc
  }
}
let p1: Food = new Food({
  name: '西兰花',
  desc: '好吃',
  price: 20
})
let p2: Food = new Food({
  name: '黄瓜炒鸡蛋',
  desc: '清爽',
  price: 12
})
console.log('名称', p1.name)
console.log('名称', p2.name)

@Entry
@Component
struct Index {
  build() {
    
  }
}

