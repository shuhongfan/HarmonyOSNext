@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // backgroundImagePosition
    // 1. 传入对象, 设置位置坐标，背景图片的左顶点
    //    { x: 坐标值, y: 坐标值 }
    //    注意：坐标值的单位，和宽高的默认单位不同的，显示出来大小会不同
    //
    // 2. Alignment 枚举，设置一些特殊的位置（中央、左顶点...）
    //    Center  TopStart左顶点 TopEnd右顶点 BottomEnd右下...
    Column() {
      Text()
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.flower'))
        .backgroundImagePosition({
          x: 400,
          y: 300
        })
        .backgroundImagePosition(Alignment.BottomEnd)
    }
    .padding(20)
  }
}


