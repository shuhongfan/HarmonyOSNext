@Entry
@Component
struct BuilderDemo {
  @State message: string = '@Builder';

  build() {
    Column({ space: 20 }) {
      Text(this.message)
        .fontSize(30)

      Row() {
        Row() {
          Column({ space: 10 }) {
            Image($r('app.media.ic_reuse_01'))
              .width('80%')
            Text('阿里拍卖')

          }
          .width('25%')
          .onClick(() => {
            AlertDialog.show({
              message: '点了 阿里拍卖'
            })
          })

          Column({ space: 10 }) {
            Image($r('app.media.ic_reuse_02'))
              .width('80%')
            Text('菜鸟')

          }
          .width('25%')
          .onClick(() => {
            AlertDialog.show({
              message: '点了 菜鸟'
            })
          })

          Column({ space: 10 }) {
            Image($r('app.media.ic_reuse_03'))
              .width('80%')
            Text('芭芭农场')

          }
          .width('25%')
          .onClick(() => {
            AlertDialog.show({
              message: '点了 芭芭农场'
            })
          })

          Column({ space: 10 }) {
            Image($r('app.media.ic_reuse_04'))
              .width('80%')
            Text('阿里药房')

          }
          .width('25%')
          .onClick(() => {
            AlertDialog.show({
              message: '点了 阿里药房'
            })
          })
        }
      }
    }
    .width('100%')
    .height('100%')
  }

}