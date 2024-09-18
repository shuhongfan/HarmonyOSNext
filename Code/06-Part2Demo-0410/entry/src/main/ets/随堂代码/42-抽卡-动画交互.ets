// 定义接口 (每个列表项的数据结构)
interface ImageCount {
  url: string
  count: number
}

// 需求1: 遮罩层显隐  透明度opacity 0-1  层级zIndex -1~99
// 需求2: 图片缩放    缩放scale 0-1

@Entry
@Component
struct Index {
  // 基于接口, 准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00', count: 0 },
    { url: 'app.media.bg_01', count: 1 },
    { url: 'app.media.bg_02', count: 2 },
    { url: 'app.media.bg_03', count: 3 },
    { url: 'app.media.bg_04', count: 4 },
    { url: 'app.media.bg_05', count: 5 }
  ]

  // 控制遮罩的显隐
  @State maskOpacity: number = 0 // 透明度
  @State maskZIndex: number = -1 // 显示层级

  // 控制图片的缩放
  @State maskImgX: number = 0 // 水平缩放比
  @State maskImgY: number = 0 // 垂直缩放比

  build() {
    Stack() {
      // 初始化的布局结构
      Column() {
        Grid() {
          ForEach(this.images, (item: ImageCount, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  fontSize: 14,
                  badgeSize: 20,
                  badgeColor: '#fa2a2d'
                }
              }) {
                Image($r(item.url))
                  .width(80)
              }
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .width('100%')
        .height(300)
        .margin({ top: 100 })

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({ top: 50 })
          .onClick(() => {
            // 点击时, 修改遮罩参数, 让遮罩显示
            this.maskOpacity = 1
            this.maskZIndex = 99
            // 点击时, 图片需要缩放
            this.maskImgX = 1
            this.maskImgY = 1
          })
      }
      .width('100%')
      .height('100%')

      // 抽卡遮罩层 (弹层)
      Column({ space: 30 }) {
        Text('获得生肖卡')
          .fontColor('#f5ebcf')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.img_00'))
          .width(200)
          // 控制元素的缩放
          .scale({
            x: this.maskImgX,
            y: this.maskImgY
          })
          .animation({
            duration: 500
          })
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({ width: 2, color: '#fff9e0' })
          .onClick(() => {
            // 控制弹层显隐
            this.maskOpacity = 0
            this.maskZIndex = -1
            // 图像重置缩放比为 0
            this.maskImgX = 0
            this.maskImgY = 0
          })
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height('100%')
      // 颜色十六进制色值,如果是八位,前两位,就是透明度
      .backgroundColor('#cc000000')
      // 设置透明度
      .opacity(this.maskOpacity)
      .zIndex(this.maskZIndex)
      // 动画 animation, 当我们元素有状态的改变,可以添加animation做动画
      .animation({
        duration: 200
      })
    }

  }
}