@Entry
@Component
struct Index {
  @Builder
  myBuilder (title: string, img: ResourceStr) {
    Column() {
      Image(img)
        .width(30)
      Text(title)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        Text('购物车内容')
      }
      .tabBar(this.myBuilder('购物车', $r('app.media.ic_tabbar_icon_2')))

      TabContent() {
        Text('我的内容')
      }
      .tabBar(this.myBuilder('我的', $r('app.media.ic_tabbar_icon_3')))
    }
  }
}