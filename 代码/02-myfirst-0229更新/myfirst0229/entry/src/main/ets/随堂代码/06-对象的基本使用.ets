// 需求：定义一个对象
// 姓名：杨幂  年纪：18  体重：90

// 1. 定义接口
interface Person {
  name: string
  age: number
  weight: number
}

// 2. 基于接口，定义对象
let ym: Person = {
  name: '大幂幂',
  age: 18,
  weight: 90
}

// 3. 获取对象属性值  对象名.属性名
console.log('体重:', ym.weight)
console.log('年纪:', ym.age)
console.log('姓名:', ym.name)

// 基于接口，可以多次定义对象，这些对象有着相同的结构类型
let lss: Person = {
  name: '刘诗诗',
  age: 19,
  weight: 88
}
console.log('姓名', lss.name)


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}