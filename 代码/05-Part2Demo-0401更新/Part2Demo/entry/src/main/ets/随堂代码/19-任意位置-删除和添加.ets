// 定义一个数组
let songs: string[] = ['告白气球', '洋葱', '吻别', '双节棍', '曹操']
// splice 在任意位置进行删除或新增内容
// 数组名.splice(操作的起始位置, 删除几个, 新增的项1, 新增的项2, ...)

// 1. 删除(任意位置)
// songs.splice(2, 2)
// console.log('数组songs', songs)

// 2. 新增(任意位置)
// songs.splice(1, 0, '彩虹') // 新增

// 3. 替换(删了一项, 又加了一项)
// songs.splice(1, 1, '彩虹')
// console.log('数组songs', songs)

@Entry
@Component
struct Index {
  build() {
    
  }
}