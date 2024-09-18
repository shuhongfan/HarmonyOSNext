// console.log(typeof 111)
// console.log(typeof true)
// console.log(typeof 'abc')
//
// // typeof 仅能用于判断简单类型, 复杂类型需要用instanceof判断
// class Person {}
// class Student {}
// let p: Person = new Person()
// let s: Student = new Student()
// console.log(typeof p)
// console.log(typeof s)


class Person {}
class Student extends Person {}
class Worker extends Person {}

let s: Student = new Student()
console.log('判断结果:', s instanceof Student)
console.log('判断结果:', s instanceof Person)
console.log('判断结果:', s instanceof Worker)

interface IObj {}
// 判断一个变量是否存的是数组
let temp: IObj = {}
console.log('是否是数组', temp instanceof Array)


@Entry
@Component
struct Index {
  build() {
    // Row().width(100)
    Column() {

    }
  }
}

