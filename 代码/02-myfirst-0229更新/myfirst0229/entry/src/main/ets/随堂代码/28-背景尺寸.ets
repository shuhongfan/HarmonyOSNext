@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    Column() {
      Text()
        .width(330)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.jd_bg'))
        .backgroundImagePosition(Alignment.Center)
        .backgroundImageSize(ImageSize.Cover)

        // 1. 直接写 宽高尺寸 对象
        // .backgroundImageSize({
        //   width: 150,
        //   // height: 100
        // })

        // 2. 设置 背景尺寸 的枚举 ImageSize
        // (1) Contain: 等比例缩放，展示整张图片，可能会留白
        // (2) Cover: 等比例缩放，让图片铺满整个容器，不会留白，但是有可能会有部分内容显示不全
    }
  }
}


