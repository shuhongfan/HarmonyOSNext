// 泛型接口
interface IdFunc<T> {
  // 约定有两个方法 (id类型不定, string number)
  // 1. 传入 id 值, 就返回 id 值
  // 2. 返回一个 ids 数组
  id: (value: T) => T
  ids: () => T[]
}

let obj: IdFunc<number> = {
  id(value: number) {
    return value
  },
  ids() {
    return [1, 2, 3]
  }
}

let obj2: IdFunc<string> = {
  id(value: string) {
    return value
  },
  ids() {
    return ['001', '002', '003']
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

