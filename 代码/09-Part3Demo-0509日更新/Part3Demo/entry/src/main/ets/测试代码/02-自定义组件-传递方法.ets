@Component
struct MyComponent {
  @State food: string = '冬瓜炒鸡蛋'
  dog: string = '柯基' // 普通变量也是响应式的

  // 箭头函数, 外部可以传入函数并覆盖
  sayHello = () => {
    console.log('默认的打招呼')
  }

  sayHi () {
    console.log('普通函数, 无法外部传入覆盖')
  }

  build() {
    Row()  {
      Text(`自定义组件 ${this.dog} ${this.food}`)
      Button('点击按钮')
        .onClick(() => {
          this.food += '!'
          this.dog += '.'
          this.sayHello()
        })
    }.border({ width: 1 }).padding(20)
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      MyComponent()

      // 组件上直接添加的样式, 会作用到外部套了的容器
      MyComponent({ dog: '柴犬', food: '零食', sayHello() {
        console.log('外部传入的打招呼的逻辑')
      }}).border({ width: 1 }).padding(20)

      MyComponent()
    }
    .padding(20)
  }
}

