@Component
struct CardComponent {
  title: string = ''
  subTitle: string = ''

  clickHandler = () => {
    AlertDialog.show({
      message: '默认的功能'
    })
  }
  build() {
    Column() {
      Row() {
        Text(this.title).layoutWeight(1)
        Row() {
          Text(this.subTitle)
          Image($r('app.media.ic_public_arrow_right'))
            .width(20)
        }
        .onClick(() => {
          this.clickHandler()
        })
      }
      Row() {
        Text('默认的内容')
      }
      .height(100)
    }
    .backgroundColor(Color.Pink)
    .borderRadius(10)
    .padding(10)
    .margin({ bottom: 20 })
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      CardComponent({
        title: '全部评论',
        subTitle: '更多操作',
        clickHandler () {
          AlertDialog.show({
            message: '默认的功能'
          })
        }
      })

      CardComponent({
        title: '全部商品(100+)',
        subTitle: '更多操作',
        clickHandler () {
          AlertDialog.show({
            message: '更多商品'
          })
        }
      })
    }
    .padding(20)
  }
}

