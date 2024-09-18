// 父类   子类
// 人类   学生, 老师, 工人
class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }

  sayHi() {
    console.log('大家好~', this.name, this.age)
  }
}

class Student extends Person {
  grade: string

  constructor(name: string, age: number, grade: string) {
    // 父类中的构造函数, 此时需要我们手动调用  super() 构造函数, super.方法名(), super.属性名
    super(name, age)
    // 完成自己属性的初始化
    this.grade = grade
  }

  study () {
    console.log('我是学生, 我爱学习~')
  }
  // 子类中想要重写父类中的方法, 只需提供同名的方法即可
  sayHi(): void {
    super.name // 获取父类的属性
    super.age // 获取父类的属性
    super.sayHi() // 调用了父类的方法
    console.log('hello, nice to meet you'); // 扩展了自己的特性
  }
}
let s1: Student = new Student('小明', 18, '五年级')
s1.sayHi() // 调用重写的sayHi方法

// s1.study() // 调用自己的study方法
// console.log(s1.grade) // 访问自己的grade属性

let s2: Student = new Student('小蓝', 18, '三年级')
// console.log(s2.grade)

// class Teacher extends Person {
// }
// let t1: Teacher = new Teacher('李老师', 35)
// t1.sayHi() // 调用父类的sayHi方法
//
//
// class Worker extends Person {
// }


@Entry
@Component
struct Index {
  build() {
    // Row().width(100)
    Column() {

    }
  }
}

