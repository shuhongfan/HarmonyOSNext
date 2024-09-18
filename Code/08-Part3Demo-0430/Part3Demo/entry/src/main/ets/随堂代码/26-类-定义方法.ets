// 类 → 定方法
class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
  // 跟xxx打招呼, 还要自我介绍
  sayHi(yourName: string) {
    // 通过this可以访问到创建出来的实例对象
    console.log(`hello, ${yourName}, 我是${this.name}`)
  }
  sing(): string {
    return '稻香'
  }
}
let p1:Person = new Person('凹凸曼', 18)
p1.sayHi('小怪兽')

let p2:Person = new Person('大灰狼', 5)
p2.sayHi('小绵羊')

@Entry
@Component
struct Index {
  build() {
    
  }
}

