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
      .height(100)

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