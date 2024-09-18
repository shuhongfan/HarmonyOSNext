@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        // 产品
        Row({ space: 10}){
          // 图片
          Image($r('app.media.product1'))
            .width(100)
            .borderRadius(8)
          // 文字
          Column({space: 10}) {
            Column({ space: 6}) {
              Text('冲销量1000ml缤纷八果水果捞')
                .lineHeight(20)
                .fontSize(14)
              Text('含1份折扣商品')
                .fontSize(12)
                .fontColor('#7f7f7f')
            }
            .width('100%')
            .alignItems(HorizontalAlign.Start)
            Row(){
              // 价格
              Row({ space: 5}) {
                Text() {
                  Span('￥')
                    .fontSize(14)
                  Span('20.2')
                    .fontSize(18)
                }
                .fontColor('#ff4000')
                Text() {
                  Span('￥')
                  Span('40.4')
                }
                .fontSize(14)
                .fontColor('#999')
                .decoration({type: TextDecorationType.LineThrough, color: '#999'})
              }
              // 加减
              Row() {
                Text('-')
                  .width(22)
                  .height(22)
                  .border({width:1, color: '#e1e1e1', radius: {topLeft: 5, bottomLeft: 5}})
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                Text('1')
                  .height(22)
                  .border({width: { top:1, bottom: 1 }, color: '#e1e1e1'})
                  .padding({left: 10, right: 10})
                  .fontSize(14)
                Text('+')
                  .width(22)
                  .height(22)
                  .border({width:1, color: '#e1e1e1', radius: {topRight: 5, bottomRight: 5}})
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
              }
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .height(75)
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .alignItems(VerticalAlign.Top)
        .padding(20)

        // 结算
        Row({ space: 10 }){
          // 价格
          Column({space: 5}) {
            Text() {
              Span('已选 2 件，')
                .fontColor('#848484')
              Span('合计:')
              Span('￥')
                .fontColor('#fd4104')
              Span('20.2')
                .fontColor('#fd4104')
                .fontSize(16)
            }
            .fontSize(14)
            Text('共减￥20.2')
              .fontColor('#fd4104')
              .fontSize(12)
          }
          .alignItems(HorizontalAlign.End)
          // 结算按钮
          Button('结算外卖')
            .width(110)
            .height(40)
            .backgroundColor('#fed70e')
            .fontColor('#564200')
            .fontSize(16)
            .fontWeight(600)
        }
        .width('100%')
        .height(70)
        .backgroundColor('#fff')
        .position({x:0, y: '100%'})
        .translate({y: '-100%'})
        .padding({ left: 20, right: 20 })
        .justifyContent(FlexAlign.End)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f3f3f3')
  }
}