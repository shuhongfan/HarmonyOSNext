// 静态属性 和 静态方法
class Robot {
  static version: string = 'v2.0'
  static getRandom(): number {
    return Math.random()
  }
}
console.log('Robot类的版本', Robot.version)
console.log('工具方法:', Robot.getRandom())

@Entry
@Component
struct Index {
  build() {
    
  }
}

