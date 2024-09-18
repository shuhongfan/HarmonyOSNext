interface Person {
  id: number
  name: string
  age: number
}


@Entry
@Component
struct ObservedAndLink {
  @State personList: Person[] = [
    {
      id: 1,
      name: '张三',
      age: 18
    },
    {
      id: 2,
      name: '李四',
      age: 19
    },
    {
      id: 3,
      name: '王五',
      age: 20
    }
  ]

  build() {
    Column({ space: 20 }) {
      Text('父组件')
        .fontSize(30)
      List({ space: 10 }) {
        ForEach(this.personList, (item: Person, index: number) => {
          ItemCom({
            info: item,
            addAge: () => {
              item.age++
              this.personList.splice(index, 1, item)
            }
          })
        })
      }

    }
    .backgroundColor('#cbe69b')
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

@Component
struct ItemCom {
  @Prop info: Person
  addAge = () => {

  }

  build() {
    ListItem() {
      Row({ space: 10 }) {
        Text('姓名:' + this.info.name)
        Text('年龄:' + this.info.age)
        Blank()
        Button('修改数据')
          .onClick(() => {
            this.addAge()
          })
      }
      .backgroundColor(Color.Pink)
      .padding(10)
      .width('100%')
    }
  }
}
