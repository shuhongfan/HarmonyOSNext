@Entry
@Component
struct Index {
  build() {
    Tabs() {
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
  }
}