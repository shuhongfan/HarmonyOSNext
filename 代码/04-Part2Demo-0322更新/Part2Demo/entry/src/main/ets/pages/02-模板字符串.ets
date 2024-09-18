// 模板字符串 `` (支持变量, 更利于字符串拼接)    普通字符串 ''  ""
// let str: string = `hello world`
//
// let name: string = '成小龙'
// let age: number = 18
// let hobby: string = '打拳'
// console.log('简介信息', `姓名: ${name}, 年纪: ${age}岁, 爱好: ${hobby}`)
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