// 类
// class 类名 {
//   字段名:类型 = 初始值
//   字段名?:类型
// }

class Cat {
  name: string = 'Tom'
  foods?: string
}
// 基于类, 创建对象
let p: Cat = new Cat()
console.log('姓名:', p.name.length)

p.foods = '小黄鱼'
console.log('食物:', p.foods?.length)

@Entry
@Component
struct Index {
  build() {
    
  }
}

