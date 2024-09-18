// 泛型: 广泛的类型 => 类型可以作为参数传递过来, 类型是[可变]的
// function 函数名<Type> (形参: Type): Type {
//   return 形参
// }

// 封装了一个函数: 传入什么样的参数, 就立刻返回什么样的参数
function fn<T> (param: T) : T {
  return param
}
fn<string>('abc')
fn<number>(123)
fn<boolean>(true)
fn<number[]>([1, 2, 3, 4, 5])

// 会默认根据传参, 进行类型推断, 动态的配置 T 类型参数 的值
fn(true)
fn([1, 2, 3, 4, 5])

// 练习1: 定义函数, 参数是数组(存的类型不定), 返回数组的长度
function getLength<T> (arr: T[]) : number {
  return arr.length
}
console.log('', getLength<number>([1, 2, 3]))
console.log('', getLength<string>(['1', 'aa', 'bb', 'cc']))

// 练习2: 定义函数, 参数是数组(存的类型不定), 返回数组的最后一项
function getLast<T> (arr: T[]) : T {
  return arr[arr.length - 1]
}
console.log('', getLast<number>([1, 2, 3, 4, 99]))
console.log('', getLast<string>(['a', 'b', 'c']))




@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

