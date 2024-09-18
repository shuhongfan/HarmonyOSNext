@Entry
@Component
struct Index {
  @State count: number = 5
  build() {
    Column() {
      Row() {
        Text('-')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topLeft: 3, bottomLeft:3}})
          .textAlign(TextAlign.Center)
          .onClick(() => {
            // 如果数字大于1, 可以减
            if (this.count > 1) {
              this.count--
            }
            // 否则, 给个提示
            else {
              // console.log('提示', '最小值为1, 不能再减了')
              AlertDialog.show({
                message: '最小值为1, 不能再减了'
              })
            }

          })

        Text(this.count.toString())
          .height(40)
          .padding({left: 20, right: 20 })
          .border({width: {top: 2, bottom: 2}, color: '#999'})
          .fontSize(14)

        Text('+')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topRight: 3, bottomRight: 3}})
          .textAlign(TextAlign.Center)
          .onClick(() => {
            this.count++
          })
      }
    }
    .padding(20)
  }
}