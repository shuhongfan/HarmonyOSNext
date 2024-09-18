@Component
struct SonCom {
  // 保证父组件的数据变化了, 能够往下响应式的更新
  @Prop sCar: string = ''
  changeCar = (newCar: string) => {}

  build() {
    Column() {
      Text(`子组件 ${this.sCar}`)
      Button('换车').onClick((event: ClickEvent) => {
        // 1. prop传值 → 单向传递
        // 子组件, 可以修改到 prop 传值, 但是修改的更新不会同步到父组件
        // 通常不太会直接修改 prop 传值, 父组件的状态一旦变化, 会自动向下同步
        // 修改就被覆盖了
        // this.sCar = '小黄车'

        // 2. 如果实在想更新, 希望保证父子同步 => 调用父组件传递过来的方法
        // 如果没有写箭头函数, 意味着, this 指向 调用者, 而此处执行环境 this → 子组件
        this.changeCar('蹦蹦车')
      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}

@Entry
@Component
struct FatherCom {
  @State fCar:string = '劳斯莱斯'
  build() {
    Column() {
      Text(`父组件 - ${this.fCar}`)
      Button('换车').onClick(() => {
        this.fCar = '三轮车'
      })

      SonCom({
        sCar: this.fCar,
        // 这里必须要用箭头函数, 否则会有 this 指向的问题
        // 使用箭头函数的好处, 可以使用外部环境的 this, 不受传递过去后的执行环境影响
        // 希望此处 this 指向 父组件
        changeCar: (newCar: string) => {
          this.fCar = newCar
        }
      })
    }
    .padding(50)
    .backgroundColor(Color.Pink)
  }
}