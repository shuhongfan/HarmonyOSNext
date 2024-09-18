// 需求：定义一个对象
// 特征：姓名：杨幂  年纪：18  体重：90
// 行为：唱歌、跳舞

// 1. 定义接口
interface Person {
  name: string
  age: number
  weight: number

  // ① 定义方法的类型
  sing: (song: string) => void
  dance: () => void
}

// 2. 基于接口，定义对象
let ym: Person = {
  name: '大幂幂',
  age: 18,
  weight: 90,

  // ② 定义方法
  sing: (song: string) => {
    console.log('杨幂说', '我来唱首歌', song)
  },
  dance: () => {
    console.log('杨幂说', '我来跳个舞')
  }
}

// ③ 调用对象里面的方法 （重要！！）
ym.sing('爱的供养')
ym.dance()


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