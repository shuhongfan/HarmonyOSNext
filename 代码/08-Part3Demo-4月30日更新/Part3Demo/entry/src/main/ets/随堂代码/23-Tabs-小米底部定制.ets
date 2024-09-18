@Entry
@Component
struct Index {
  // 准备状态, 存储激活的索引
  @State selectedIndex: number = 0

  @Builder
  myBuilder (itemIndex: number, title: string, img: ResourceStr, selImg: ResourceStr) {
    // 如果激活的是自己, 图片/文本 都需要调整样式 → 需要区分不同的 tabBar
    Column() {
      Image(itemIndex == this.selectedIndex ? selImg : img)
        .width(30)
      Text(title)
        .fontColor(itemIndex == this.selectedIndex ? Color.Red : Color.Black)
    }
  }

  @Builder
  centerBuilder () {
    Image($r('app.media.ic_reuse_02'))
      .width(40)
      .margin({ bottom: 10 })
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        Text('首页内容')
      }
      .tabBar(this.myBuilder(0, '首页', $r('app.media.ic_tabbar_icon_0'), $r('app.media.ic_tabbar_icon_0_selected')))

      TabContent() {
        Text('分类内容')
      }
      .tabBar(this.myBuilder(1, '分类', $r('app.media.ic_tabbar_icon_1'), $r('app.media.ic_tabbar_icon_1_selected')))

      // 特殊形状的Tab
      TabContent() {
        Text('活动内容')
      }
      .tabBar(this.centerBuilder())

      TabContent() {
        Text('购物车内容')
      }
      .tabBar(this.myBuilder(3, '购物车', $r('app.media.ic_tabbar_icon_2'), $r('app.media.ic_tabbar_icon_2_selected')))

      TabContent() {
        Text('我的内容')
      }
      .tabBar(this.myBuilder(4, '我的', $r('app.media.ic_tabbar_icon_3'), $r('app.media.ic_tabbar_icon_3_selected')))
    }
    .onChange((index: number) => {
      // console.log('激活的索引', index)
      this.selectedIndex = index
    })
    .animationDuration(0)
    .scrollable(false)
  }
}