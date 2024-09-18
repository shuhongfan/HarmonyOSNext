interface IPerson {
  id: number
  name: string
  age: number
}

@Observed
class Person {
  id: number
  name: string
  age: number

  constructor(obj: IPerson) {
    this.id = obj.id
    this.name = obj.name
    this.age = obj.age
  }
}


@Entry
@Component
struct ObservedAndLink {
  @State personList: Person[] = [
    new Person({
      id: 1,
      name: '张三',
      age: 18
    }),
    new Person({
      id: 2,
      name: '李四',
      age: 19
    }),
    new Person({
      id: 3,
      name: '王五',
      age: 20
    })
  ]

  build() {
    Column({ space: 20 }) {
      Text('父组件')
        .fontSize(30)
      // 属性更新的逻辑: 当我们@Observed装饰过的数据, 属性改变时, 就会监听到
      // 遍历依赖它的 @ObjectLink 包装类, 通知数据更新
      // 注意: entry 组件无法直接使用 ObjectLink, 需要包一层
      MyCom({
        info: this.personList[0]
      })

      List({ space: 10 }) {
        ForEach(this.personList, (item: Person, index: number) => {
          ItemCom({
            info: item,
            addAge: () => {
              AlertDialog.show({
                message: JSON.stringify(this.personList)
              })
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
struct MyCom {
  @ObjectLink info: Person
  build() {
    Text(this.info.age.toString())
  }
}

@Component
struct ItemCom {
  @ObjectLink info: Person
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
            this.info.age++
            this.addAge()
          })
      }
      .backgroundColor(Color.Pink)
      .padding(10)
      .width('100%')
    }
  }
}
