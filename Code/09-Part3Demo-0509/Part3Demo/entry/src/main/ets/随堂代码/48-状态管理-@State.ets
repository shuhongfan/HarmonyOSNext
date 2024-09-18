interface Car {
  name: string
}
interface Person {
  name: string
  car: Car
}

const obj: Person = {
  name: 'zs',
  car: {
    name: '小黄车'
  }
}
console.log('查看第一层属性', Object.keys(obj))

@Entry
@Component
struct Index {
  // 状态变量
  // 1. string number boolean 可以直接监视到变化
  @State message: string = 'hello world'
  // 2. 复杂类型 object class, 第一层随便改, 嵌套需要进行整个嵌套对象的替换
  @State person: Person = {
    name: 'jack',
    car: {
      name: '宝马车'
    }
  }
  build() {
    Column() {
      Text(this.message).fontSize(20)
      Button('改message').onClick(() => {
        this.message = '你好'
      })
      Text(JSON.stringify(this.person))
      Button('改person').onClick(() => {
        // this.person = {
        //   name: 'amy',
        //   car: {
        //     name: '保时捷'
        //   }
        // }

        // this.person.name = 'tony'

        // 如果不是对象的第一层属性, 修改时, 需要修改整个嵌套的对象
        // this.person.car.name = '小火车'

        // console.log('car name', this.person.car.name)
        this.person.car = {
          name: '老爷车'
        }
      })
    }
  }
}