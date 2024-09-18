@Component
struct MyCom {
  @BuilderParam
  LeftBuilderParam: () => void = this.defaultBuilder
  @BuilderParam
  RightBuilderParam: () => void = this.rightBuilder

  @Builder
  defaultBuilder () {
    Text('默认内容')
  }
  @Builder
  rightBuilder () {
    Text('右侧内容')
  }

  build() {
    Grid() {
      GridItem() {
        this.LeftBuilderParam()
      }
      .border({ width: 1 })

      GridItem() {
        this.RightBuilderParam()
      }
      .border({ width: 1 })
    }
    .columnsTemplate('1fr 1fr')
    .width('100%')
    .height(30)
  }
}

@Entry
@Component
struct Index {
  @Builder
  leftBuilder () {
    Text('左侧内容')
  }

  @Builder
  rightBuilder () {
    Text('右侧美女')
  }

  build() {
    Column() {
      MyCom({
        LeftBuilderParam: this.leftBuilder,
        RightBuilderParam: this.rightBuilder
      })
    }
    .padding(20)
  }
}