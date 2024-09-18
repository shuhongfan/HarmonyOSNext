@Entry
@Component
struct TwoPage {
  @State message: string = 'AbilityTwoPage-买菜';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}