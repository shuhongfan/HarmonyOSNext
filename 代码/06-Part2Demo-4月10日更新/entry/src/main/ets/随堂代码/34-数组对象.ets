// 对象数组 => 数组中包裹存储了很多的对象
// 1. 约定接口 (对象的类型)
interface Student {
  stuId: number
  name: string
  gender: string
  age: number
}

// 2. 基于接口, 构建对象数组
let stuArr: Student[] = [
  { stuId: 1, name: '小丽', gender: '女', age: 12 },
  { stuId: 2, name: '小红', gender: '女', age: 11 },
  { stuId: 3, name: '大强', gender: '男', age: 12 },
  { stuId: 4, name: '阿明', gender: '男', age: 13 },
]
// 包括对象的复杂数据,如果想要在日志中打印, 需要调用一个方法, 转成字符串格式
// JSON.stringify(复杂类型)  对象/数组
// console.log('学生数组', JSON.stringify(stuArr))

// 3. 具体使用 (访问 →  通过下标)
// console.log('小红', stuArr[1].name)
// console.log('小红', JSON.stringify(stuArr[1]))

// 4. 也支持遍历 for... of, 普通for
for (let item of stuArr) {
  console.log('每一项', JSON.stringify(item))
}


@Entry
@Component
struct Index {
  build() {

  }
}