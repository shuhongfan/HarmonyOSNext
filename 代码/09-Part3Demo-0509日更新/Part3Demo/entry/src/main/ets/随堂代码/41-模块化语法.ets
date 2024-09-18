// 路径: 查找文件时, 从起点到终点的路线
// 相对路径: 从当前文件出发查找目标文件
// → 找上一级 ../
// → 同级目录 ./

// 1. 默认导入
// import result from '../tools/module1'
// import fn from './module2'
// console.log('module1中的数据', JSON.stringify(result))
// fn()

// 2. 按需导入
// import { name1, price, sayHi as sayHello } from '../tools/module3'
// console.log('module3中的数据', name1, price)
// sayHello()

// 3. 全部导入
import * as Module3 from '../tools/module3'
console.log('全部的数据', Module3.name1)
console.log('全部的数据', Module3.price2)
Module3.sayHi()

@Entry
@Component
struct Index {
  build() {
    
  }
}