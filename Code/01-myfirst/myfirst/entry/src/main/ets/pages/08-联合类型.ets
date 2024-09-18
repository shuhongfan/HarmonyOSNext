// 需求：定义一个变量，存放【年终考试评价】
// 考试评价：可能是具体的分数，也可能是A、B、C、D等级
// let judge: number | string = 100
// judge = 'A+'
// judge = '优秀'
// judge = '不错，继续努力'
// console.log('年终考试评价', judge)

// 联合类型还可以将变量值，约定在一组数据范围内进行选择
// 性别：男 女 保密
let gender: 'man' | 'woman' | 'secret' = 'secret'

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