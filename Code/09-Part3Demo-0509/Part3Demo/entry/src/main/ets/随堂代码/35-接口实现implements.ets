// 接口实现: 定义一个接口, 约束类 => 类需要按照接口的要求, 实现类的主体
interface IDog {
  name: string
  age: number
  jump: () => void
}

// 基于接口, 实现类
class Dog implements IDog {
  name: string
  age: number
  desc: string

  constructor(name: string, age: number, desc: string) {
    this.name = name
    this.age = age
    this.desc = desc
  }

  jump() {

  }
}
let dog: Dog = new Dog('小飞', 2, '是一只非常帅气的二哈')
dog.jump()

function 函数名<Type>(temp:Type):Type{
  return temp
}


@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

