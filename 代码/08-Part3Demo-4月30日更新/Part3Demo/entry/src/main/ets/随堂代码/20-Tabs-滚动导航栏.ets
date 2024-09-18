@Entry
@Component
struct Index {
  titles: string[] = [
    '首页','关注','热门','军事','体育',
    '八卦','数码','财经','美食','旅行'
  ]
  build() {
    // 生成10个面板 → 10个小导航
    Tabs() {
      ForEach(this.titles, (item: string, index) => {
        TabContent() {
          Text(`${item}内容`)
        }
        .tabBar(item)
      })
    }
    // barMode属性, 可以实现滚动导航栏
    .barMode(BarMode.Scrollable)
  }
}

