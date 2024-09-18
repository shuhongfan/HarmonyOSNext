
@Entry
@Component
struct Index {

  build() {
    Column() {
      Row() {
        Text('-')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topLeft: 3, bottomLeft:3}})
          .textAlign(TextAlign.Center)

        Text('1')
          .height(40)
          .padding({left: 20, right: 20 })
          .border({width: {top: 2, bottom: 2}, color: '#999'})
          .fontSize(14)

        Text('+')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topRight: 3, bottomRight: 3}})
          .textAlign(TextAlign.Center)
      }
    }
    .padding(20)
  }
}