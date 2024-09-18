@Component
struct CardComponent {
  title: string = ''
  subTitle: string = ''

  clickHandler = () => {
    AlertDialog.show({
      message: '默认的功能'
    })
  }

  @Builder
  defaultBuilder () {
    Text('默认内容')
  }

  @BuilderParam
  contentBuilder: () => void = this.defaultBuilder

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
        this.contentBuilder()
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
      }) {
        Text('传递的内容, 测试~')
      }

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

