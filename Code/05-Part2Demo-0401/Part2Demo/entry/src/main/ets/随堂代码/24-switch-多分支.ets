// 输入水果名称, 查询价格 (精确匹配)
let fruit: string = '榴莲'

switch (fruit) {
  case '苹果':
    console.log('苹果价格:', '2.8元一斤')
    break
  case '香蕉':
    console.log('香蕉价格:', '5.5元一斤')
    break
  case '西瓜':
    console.log('西瓜价格:', '1.5元一斤')
    break
  default:
    console.log('提示:', '尊敬的用户, 该水果不存在')
}

@Entry
@Component
struct Index {
  build() {

  }
}