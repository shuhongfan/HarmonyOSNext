// 泛型约束: 给传递的类型参数, 添加限制
interface ILength {
  length: number
}
function fn<T extends ILength>(param: T) {
  console.log('', param.length)
}

fn<string>('abc')
fn<number[]>([1, 2, 3])

class Desk {
  length = 2
}
let d = new Desk()
fn<Desk>(d)




@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

