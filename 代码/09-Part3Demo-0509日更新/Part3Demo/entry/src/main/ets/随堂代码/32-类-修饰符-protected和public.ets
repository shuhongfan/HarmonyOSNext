class Person {
  protected name: string
  protected age: number
  desc: string = '描述'
  // 类的内容, 无论是私有还是保护, 都是可以访问的
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}
let p = new Person('小王', 18)
// console.log('实例访问:', p.name) // 无法在外部, 访问受保护的数据

class Student extends Person {
  sayHi () {
    console.log('访问私有的数据:', super.name) // 保护的数据可以在子类访问
  }
}



@Entry
@Component
struct Index {
  build() {
    // Row().width(100)
    Column() {

    }
  }
}

