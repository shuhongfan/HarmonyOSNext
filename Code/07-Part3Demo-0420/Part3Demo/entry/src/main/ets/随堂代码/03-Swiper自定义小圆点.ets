@Entry
@Component
struct Index {
  build() {
    Column() {
      // Swiper 轮播组件的基本使用
      // 1. Swiper 包内容
      // 2. Swiper 设尺寸
      Swiper() {
        Text('1')
          .backgroundColor(Color.Orange)
        Text('2')
          .backgroundColor(Color.Yellow)
        Text('3')
          .backgroundColor(Color.Brown)
      }
      .width('100%')
      .height(200)
      // 常用属性
      .loop(true) // 开启循环
      .autoPlay(true) // 自动播放
      .interval(5000) // 自动播放间隔
      .vertical(false) // 横向/纵向
      // 定制小圆点
      // .indicator(false)
      .indicator(
        Indicator.dot()
          .itemWidth(20)
          .itemHeight(20)
          .color(Color.Black)
          .selectedItemWidth(25)
          .selectedItemHeight(25)
          .selectedColor(Color.White)
      )

      Swiper() {
        Image($r('app.media.ic_swiper_xmyp01'))
        Image($r('app.media.ic_swiper_xmyp02'))
        Image($r('app.media.ic_swiper_xmyp03'))
        Image($r('app.media.ic_swiper_xmyp04'))
      }
      .width('100%')
      .height(150)
    }
  }
}