@Entry
@Component
struct Index {
  build() {
    Column() {
      // b站视频卡片
      Column() {
        // 1. 上面图片区域（层叠布局）
        Stack({ alignContent: Alignment.Bottom }) {
          Image($r('app.media.bz_img'))
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Row() {
            Row({ space: 5 }){
              Image($r('app.media.bz_play'))
                .width(14)
                .fillColor(Color.White)
              Text('288万')
                .fontSize(12)
                .fontColor(Color.White)
            }
            .margin({ right: 10 })
            Row({ space: 5 }){
              Image($r('app.media.bz_msg'))
                .width(14)
                .fillColor(Color.White)
              Text('8655')
                .fontSize(12)
                .fontColor(Color.White)
            }

            Blank()

            Text('4:33')
              .fontSize(12)
              .fontColor(Color.White)
          }
          .height(24)
          .padding({ left: 5, right: 5 })
          .width('100%')
        }
        .width('100%')
        .height(125)

        // 2. 底部文字区域
        Column() {
          Text('【凤凰传奇新歌】欢迎来到国风统治区：唢呐一响神曲《铁衣流派推广曲》')
            .fontSize(13)
            .lineHeight(16)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(2)
          Row() {
            Text('19万点赞')
              .fontSize(10)
              .fontColor('#e66c43')
              .backgroundColor('#fef0ef')
              .padding(5)
              .borderRadius(2)
            Image($r('app.media.bz_more'))
              .width(14)
          }
          .margin({ top: 6 })
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(5)
      }
      .width(200)
      .height(200)
      .backgroundColor(Color.White)
      .borderRadius(10)
      .margin({ top: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}