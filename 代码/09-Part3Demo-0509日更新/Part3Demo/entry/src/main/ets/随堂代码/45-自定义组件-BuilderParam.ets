@Component
struct SonCom {
  // 1. 定义构建函数
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder
  @Builder
  defaultBuilder () {
    Text('默认的内容')
  }
  build() {
    // 2. 使用构建函数, 构建结构
    Column() {
      this.ContentBuilder()
    }
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      SonCom() {
        Button('传入的结构')
      }
    }
  }
}