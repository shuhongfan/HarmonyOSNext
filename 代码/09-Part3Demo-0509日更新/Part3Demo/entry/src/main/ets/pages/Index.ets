@Component
struct NumberCount {
  @Prop num: number = 1
  subFn = () => {}
  addFn = () => {}
  build() {
    // 数字框组件
    Row({ space: 5 }) {
      Button('-').onClick(() => {
        this.subFn()
      })
      Text(this.num.toString())
      Button('+').onClick(() => {
        this.addFn()
      })
    }
  }
}


@Entry
@Component
struct Index {
  @State num1: number = 5
  @State num2: number = 3
  build() {
    Column() {
      Row() {
        Text('茄子')
        NumberCount({
          num: this.num1,
          addFn: () => this.num1++,
          subFn: () => this.num1--
        })
      }
      Row() {
        Text('香蕉')
        NumberCount({
          num: this.num2,
          addFn: () => this.num2++,
          subFn: () => this.num2--
        })
      }
    }
    .padding(10)
  }
}