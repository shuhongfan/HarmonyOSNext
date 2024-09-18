// 学生数组
// 语法：
// let 数组名: 类型[] = [数据1, 数据2, 数据3, ... ]

// 数组中存储的每个数据，都有自己的编号，编号从0开始（索引）
let names: string[] = ['刘亦菲', '杨颖', '杨幂', '刘诗诗', '伍佰']
console.log('数组names', names)

// 利用有序的编号(索引) 取数组的数据
// 取数据：数组名[索引]
console.log('取到了', names[3])


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