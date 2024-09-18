// 全局 Builder
@Builder
function navItem(icon: ResourceStr, txt: string) {
  Column({ space: 10 }) {
    Image(icon)
      .width('80%')
    Text(txt)
  }
  .width('25%')
  .onClick(() => {
    AlertDialog.show({
      message: '点了' + txt
    })
  })
}


@Entry
@Component
struct BuilderDemo {
  @State message: string = '@Builder';

  @Builder
  navItem(icon: ResourceStr, txt: string) {
    Column({ space: 10 }) {
      Image(icon)
        .width('80%')
      Text(txt)
    }
    .width('25%')
    .onClick(() => {
      AlertDialog.show({
        message: '点了' + txt + this.message
      })
    })
  }

  build() {
    Column({ space: 20 }) {
      Text(this.message)
        .fontSize(30)

      Row() {
        Row() {
          navItem($r('app.media.ic_reuse_01'), '阿里拍卖')
          navItem($r('app.media.ic_reuse_02'), '菜鸟')
          this.navItem($r('app.media.ic_reuse_03'), '巴巴农场')
          this.navItem($r('app.media.ic_reuse_04'), '阿里药房')
        }
      }
    }
    .width('100%')
    .height('100%')
  }

}