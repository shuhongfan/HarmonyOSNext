// 定义接口 (每个列表项的数据结构)
interface ImageCount {
  url: string
  count: number
}

// 0 1 2 3 4 5
// [0,1) * 6  =>  [0,6)
// 求随机数: Math.random
// 向下取整: Math.floor
// console.log('随机数', Math.floor(Math.random() * 6))

@Entry
@Component
struct Index {
  // 随机的生肖卡序号 0-5
  @State randomIndex: number = -1 // 表示还没开始抽

  // 基于接口, 准备数据
  @State images: ImageCount[] = [
    { url: 'app.media.bg_00', count: 0 },
    { url: 'app.media.bg_01', count: 0 },
    { url: 'app.media.bg_02', count: 0 },
    { url: 'app.media.bg_03', count: 0 },
    { url: 'app.media.bg_04', count: 0 },
    { url: 'app.media.bg_05', count: 0 }
  ]

  // 控制遮罩的显隐
  @State maskOpacity: number = 0 // 透明度
  @State maskZIndex: number = -1 // 显示层级

  // 控制图片的缩放
  @State maskImgX: number = 0 // 水平缩放比
  @State maskImgY: number = 0 // 垂直缩放比

  // 控制中大奖遮罩的显隐
  @State isGet: boolean = false

  @State arr: string[] = ['pg', 'hw', 'xm'] // 奖池
  @State prize: string = '' // 默认没中奖

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

            // 计算随机数 Math.random()  [0,1) * (n + 1)
            this.randomIndex = Math.floor(Math.random() * 6)
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
        Image($r(`app.media.img_0${this.randomIndex}`))
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

            // 开心收下, 对象数组的情况需要更新, 需要修改替换整个对象
            // this.images[this.randomIndex].count++
            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              count: this.images[this.randomIndex].count + 1
            }

            // 每次收完卡片, 需要进行简单的检索, 判断是否集齐
            // 需求: 判断数组项的count, 是否都大于0, 只要有一个等于0,就意味着没集齐
            let flag: boolean = true // 假设集齐

            // 验证是否集齐
            for (let item of this.images) {
              if (item.count == 0) {
                flag = false // 没集齐
                break // 后面的没必要判断了
              }
            }

            this.isGet = flag

            // 判断是否中奖了, 如果是 需要抽奖
            if (flag) {
              let randomIndex: number = Math.floor(Math.random() * 3)
              this.prize = this.arr[randomIndex]
            }
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

      // 抽大奖的遮罩层
      if (this.isGet) {
        Column({ space: 30 }) {
          Text('恭喜获得手机一部')
            .fontColor('#f5ebcf')
            .fontSize(25)
            .fontWeight(700)
          Image($r(`app.media.${this.prize}`))
            .width(300)
          Button('再来一次')
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({ width: 2, color: '#fff9e0' })
            .onClick(() => {
              this.isGet = false
              this.prize = ''
              this.images = [
                { url: 'app.media.bg_00', count: 0 },
                { url: 'app.media.bg_01', count: 0 },
                { url: 'app.media.bg_02', count: 0 },
                { url: 'app.media.bg_03', count: 0 },
                { url: 'app.media.bg_04', count: 0 },
                { url: 'app.media.bg_05', count: 0 }
              ]
            })
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .height('100%')
        .backgroundColor('#cc000000')
      }
    }

  }
}