// 网络图片地址：
// https://www.itheima.com/images/logo.png

@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // 1. 网络图片加载 Image('网图地址')
    // Column() {
    //   Image('https://www.itheima.com/images/logo.png')
    //     .height(50)
    // }

    // 2. 本地图片加载  Image( $r('app.media.文件名') )
    Column() {
      Image($r('app.media.product'))
        .width(200)
      Text('耐克龙年限定款！！！')
        .width(200)
      Row() {
        Image($r('app.media.avatar'))
          .width(20)
        Text('令人脱发的代码')
      }
      .width(200)
    }
  }
}

