@Entry
@Component
struct Index3 {

  // 1. 创建scroll实例对象
  myScroll: Scroller = new Scroller()
  @State yOffset: number = 0 // 实时保存y轴滚动的距离

  build() {
    Column() {
      Stack({ alignContent: Alignment.BottomEnd }) {
        // 顶部滚动区域
        // 2. 和Scroll容器绑定
        Scroll(this.myScroll) {
          Column() {
            Image($r('app.media.ic_jd_scroll_01'))
            Image($r('app.media.ic_jd_scroll_02'))
            Image($r('app.media.ic_jd_scroll_03'))
          }
        }
        .scrollBar(BarState.Off)
        .width('100%')
        .backgroundColor(Color.Orange)
        .onScroll(() => {
          this.yOffset = this.myScroll.currentOffset().yOffset
          console.log('yOffset', this.yOffset)
        })

        // 有时显示, 有时隐藏 → 条件渲染
        if (this.yOffset > 400) {
          Image($r('app.media.ic_jd_rocket'))
            .width(40)
            .backgroundColor(Color.White)
            .borderRadius(20)
            .padding(5)// .margin({right:20,bottom:20})
            .offset({ x: -20, y: -20 })
            .onClick(() => {
              // 3. 调用实例方法完成回到顶部的功能
              this.myScroll.scrollEdge(Edge.Top)
            })
        }
      }
      .layoutWeight(1)

      // 底部 tabbar 图片(后面会学)
      Image($r('app.media.ic_jd_tab'))
        .width('100%')
    }
  }
}