
@Entry
@Component
struct Index {
  build() {
    Tabs({ barPosition: BarPosition.Start }) {
      TabContent() {
        Text('首页内容') // 有且只能一个子组件
      }
      .tabBar('首页') // 配置导航

      TabContent() {
        Text('推荐内容') // 有且只能一个子组件
      }
      .tabBar('推荐')

      TabContent() {
        Text('发现内容') // 有且只能一个子组件
      }
      .tabBar('发现')

      TabContent() {
        Text('我的内容') // 有且只能一个子组件
      }
      .tabBar('我的')
    }
    .vertical(false) // 调整导航水平或垂直
    .scrollable(false) // 是否开启手势滑动
    .animationDuration(0) // 点击滑动的动画时间
  }
}
