// 1. 定义一个数组
let names: string[] = ['刘小备', '吕小布', '张大飞']
console.log('整个数组',names)

// 2. 数组取值(通过下标)
console.log('数组取值', names[1])
console.log('数组长度', names.length)

// 3. 数组修改(通过下标)
names[2] = '赵云'
console.log('修改数组', names)

@Entry
@Component
struct Index {
  build() {
    
  }
}