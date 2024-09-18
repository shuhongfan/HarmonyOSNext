// 注意点:
// 1. 普通变量, 只能在初始化时渲染, 后续变化了, 也不会引起更新
// 2. 状态变量, 被装饰器修饰, 值的改变, 会 [自动] 引起 界面的刷新

// 组件外的[普通变量] 不需要this即可访问
let myName: string = '吕布'

@Entry
@Component
struct Index {
  // 组件内的[普通变量] this.xxx
  myAge: number = 18

  // 组件内的[状态变量] this.xxx
  @State myMsg: string = 'hello 黑马'

  build() {
    Column() {
      Text(myName).onClick(() => {
        myName = '貂蝉'
        console.log('myName', myName)
      })
      Text(this.myAge.toString()).onClick(() => {
        this.myAge = 200
        console.log('myAge', this.myAge)
      })
      Text(this.myMsg).onClick(() => {
        this.myMsg = '你好 状态'
      })
    }
  }
}