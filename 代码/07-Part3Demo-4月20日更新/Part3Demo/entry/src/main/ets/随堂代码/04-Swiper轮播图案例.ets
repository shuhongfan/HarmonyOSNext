@Entry
@Component
struct Index {
  build() {
    Column() {
      // 1. Swiper轮播容器 (填入内容)
      Swiper() {
        Image($r('app.media.1')).objectFit(ImageFit.Cover)
        Image($r('app.media.2')).objectFit(ImageFit.Cover)
        Image($r('app.media.3')).objectFit(ImageFit.Cover)
        Image($r('app.media.4')).objectFit(ImageFit.Cover)
        Image($r('app.media.5')).objectFit(ImageFit.Cover)
      }
      // 2. 设置尺寸
      .width('100%').height('100%')

      // 3. 定制方向和小圆点
      .vertical(true) // 纵向轮播
      .indicator(
        Indicator.dot() // 小圆点样式
          .color(Color.White)
          .selectedColor(Color.Orange)
      )
    }
  }
}