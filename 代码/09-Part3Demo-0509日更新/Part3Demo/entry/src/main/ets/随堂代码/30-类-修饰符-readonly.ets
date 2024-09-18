// 修饰符 readonly
class Cat {
  name: string
  age: number
  readonly legs: number = 4
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}
let c1 = new Cat('小花', 2)
c1.name = '小美'
// c1.legs = 6 // 不能修改
console.log('姓名:', c1.name)

// 3.1415926 圆周率
// Math.PI

@Entry
@Component
struct Index {
  build() {
    // Row().width(100)
    Column() {

    }
  }
}

