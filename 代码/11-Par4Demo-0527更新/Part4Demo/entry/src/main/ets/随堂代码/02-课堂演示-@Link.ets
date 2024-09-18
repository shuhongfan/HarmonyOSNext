interface Person {
  name: string
  age: number
}

@Entry
@Component
  // 父组件
struct KnowledgePage {
  @State count: number = 0
  @State person: Person = {
    name: 'zs',
    age: 18
  }

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(this.count.toString())
      Text(JSON.stringify(this.person))
      Button('修改数据')
        .onClick(() => {
          this.count++
        })
      SonComponent({
        count: this.count,
        person: this.person
      })
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#eee')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}


@Component
  // 子组件
struct SonComponent {
  @Link count: number
  @Link person: Person

  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是子组件')
        .fontSize(20)
      Text(this.count.toString())
      Text(JSON.stringify(this.person))

      Column() {
        Button('修改数据')
          .onClick(() => {
            // this.count++
            this.person.age++
          })

      }

    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('80%')
    .margin({ top: 100 })
    .padding(10)
    .borderRadius(10)

  }
}