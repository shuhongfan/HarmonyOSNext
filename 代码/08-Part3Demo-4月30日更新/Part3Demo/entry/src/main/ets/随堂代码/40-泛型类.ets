// 泛型类: 定义类的时候, 配合泛型一起定义
class Person <T>{
  id: T
  constructor(id: T) {
    this.id = id
  }
  getId (): T {
    return this.id
  }
}
let p: Person<number> = new Person<number>(10)
let p2: Person<string> = new Person<string>('abc')

@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

