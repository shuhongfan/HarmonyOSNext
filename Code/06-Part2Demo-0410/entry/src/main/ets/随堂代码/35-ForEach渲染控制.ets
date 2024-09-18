@Entry
@Component
struct Index {
  @State titles:string[] = [
    '电子产品',
    '精品服饰',
    '母婴产品',
    '影音娱乐',
    '海外旅游'
  ]

  build() {
    Column() {
      ForEach(this.titles, (item: string, index: number) => {
        Text(`${index + 1} ${item}`)
          .fontSize(24)
          .fontWeight(700)
          .fontColor(Color.Orange)
          .padding(15)
          .width('100%')
      })
    }
  }
}