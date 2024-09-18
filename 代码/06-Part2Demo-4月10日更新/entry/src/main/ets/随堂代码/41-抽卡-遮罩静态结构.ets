// 1. 定义接口 (每个列表项的数据结构)
interface ImageCount {
  url: string
  count: number
}

@Entry
@Component
struct Index {
  // 2. 基于接口, 准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00', count: 0 },
    { url: 'app.media.bg_01', count: 1 },
    { url: 'app.media.bg_02', count: 2 },
    { url: 'app.media.bg_03', count: 3 },
    { url: 'app.media.bg_04', count: 4 },
    { url: 'app.media.bg_05', count: 5 }
  ]

  build() {
    Stack() {
      // 初始化的布局结构
      Column() {
        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  fontSize: 14,
                  badgeSize: 20,
                  badgeColor: '#fa2a2d'
                }
              }) {
                Image($r(item.url))
                  .width(80)
              }
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .width('100%')
        .height(300)
        .margin({ top: 100 })

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({ top: 50 })
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Pink)

      // 抽卡遮罩层 (弹层)
      Column({ space: 30 }) {
        Text('获得生肖卡')
          .fontColor('#f5ebcf')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.img_00'))
          .width(200)
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0' })
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      // 颜色十六进制色值,如果是八位,前两位,就是透明度
      .backgroundColor('#cc000000')
    }

  }
}