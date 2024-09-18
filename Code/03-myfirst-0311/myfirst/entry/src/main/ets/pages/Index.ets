@Entry
@Component
struct Index {
  build() {
    // 思路：
    // 1. 整体Stack布局 + 底部的tab
    // 2. 主体区域的架子：头部 + 主体页面 （层叠关系、主体页面可滚动）
    //    Column/Row，默认不具备可滚动的效果 → Scroll
    // 3. Head头部区域：左 中 右 三部分
    // 4. Top快捷按钮区域：Row里面4个Column （layoutWeight）
    // 5. Nav导航区域：一个列，3行，每行5列
    Stack({ alignContent: Alignment.Bottom }) {
      // 主体展示区
      Stack({ alignContent: Alignment.Top }){
        // 头部
        Row() {
          // 左边
          Column() {
            Text('北京').fontSize(18).fontColor('#fff')
            Text('晴 2°C').fontSize(12).fontColor('#fff')
            Image($r('app.media.zfb_head_down'))
              .position({
                x: 40,
                y: 0
              })
              .width(12)
              .fillColor('#fff')
          }
          // 中间
          Row() {
            Image($r('app.media.zfb_head_search'))
              .width(20)
              .fillColor('#666')
              .margin({ left: 5, right: 5 })
            Text('北京交通一卡通')
              .layoutWeight(1)
            Text('搜索')
              .width(55)
              .fontColor('#5b73de')
              .fontWeight(700)
              .textAlign(TextAlign.Center)
              .border({
                width: { left: 1 },
                color: '#ccc'
              })
          }
          .height(32)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .borderRadius(5)
          .margin({ left: 25, right: 12 })

          // 右边
          Image($r('app.media.zfb_head_plus'))
            .width(30)
            .fillColor('#fff')
        }
        .padding({ left: 10, right: 10 })
        .width('100%')
        .height(60)
        .backgroundColor('#5b73de')
        .zIndex(666)

        // 主体页面
        Scroll() {
          Column() {
            // Top快捷按钮区域
            Row() {
              Column() {
                Image($r('app.media.zfb_top_scan'))
                  .width(36)
                  .fillColor('#fff')
                Text('扫一扫')
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.zfb_top_pay'))
                  .width(36)
                  .fillColor('#fff')
                Text('收付款')
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.zfb_top_travel'))
                  .width(36)
                  .fillColor('#fff')
                Text('出行')
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.zfb_top_card'))
                  .width(36)
                  .fillColor('#fff')
                Text('卡包')
                  .fontColor('#fff')
              }
              .layoutWeight(1)
            }
            .backgroundColor('#5b73de')
            .padding({ top: 5, bottom: 15 })

            // 主体区（背景色 #f6f6f6）
            Column() {
              // 导航区域
              Column({ space: 10 }) {
                Row() {
                  Column() {
                    Image($r('app.media.zfb_nav1'))
                      .width(28).margin({ bottom: 8 })
                    Text('滴滴出行')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav2'))
                      .width(28).margin({ bottom: 8 })
                    Text('生活缴费')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav3'))
                      .width(28).margin({ bottom: 8 })
                    Text('股票')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav4'))
                      .width(28).margin({ bottom: 8 })
                    Text('蚂蚁森林')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav5'))
                      .width(28).margin({ bottom: 8 })
                    Text('手机充值')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)
                }
                .width('100%')

                Row() {
                  Column() {
                    Image($r('app.media.zfb_nav6'))
                      .width(28).margin({ bottom: 8 })
                    Text('余额宝')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav7'))
                      .width(28).margin({ bottom: 8 })
                    Text('花呗')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav8'))
                      .width(28).margin({ bottom: 8 })
                    Text('飞猪旅行')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav9'))
                      .width(28).margin({ bottom: 8 })
                    Text('淘票票')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav10'))
                      .width(28).margin({ bottom: 8 })
                    Text('饿了么')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)
                }
                .width('100%')

                Row() {
                  Column() {
                    Image($r('app.media.zfb_nav11'))
                      .width(28).margin({ bottom: 8 })
                    Text('读书听书')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav12'))
                      .width(28).margin({ bottom: 8 })
                    Text('基金')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav13'))
                      .width(28).margin({ bottom: 8 })
                    Text('直播广场')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav14'))
                      .width(28).margin({ bottom: 8 })
                    Text('医疗健康')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)

                  Column() {
                    Image($r('app.media.zfb_nav15_more'))
                      .width(28).margin({ bottom: 8 })
                    Text('更多')
                      .fontSize(12).fontColor('#666')
                  }
                  .layoutWeight(1)
                }
                .width('100%')
              }
              .padding(10)

              // 产品区
              Row({ space: 5 }) {
                Image($r('app.media.zfb_pro_pic1'))
                  .layoutWeight(1)
                Image($r('app.media.zfb_pro_pic2'))
                  .layoutWeight(1)
                Image($r('app.media.zfb_pro_pic3'))
                  .layoutWeight(1)
              }
              .padding(10)

              Column({ space: 10 }) {
                Image($r('app.media.zfb_pro_list1'))
                  .width('100%')
                Image($r('app.media.zfb_pro_list2'))
                  .width('100%')
              }
              .padding(10)
            }
            .width('100%')
            .backgroundColor('#fff')
            .borderRadius({
              topLeft: 20,
              topRight: 20
            })
          }
          .width('100%')
          .padding({ top: 60, bottom: 60 })
        }

      }
      .width('100%')
      .height('100%')

      // 底部Tab导航区
      Row() {
        Column() {
          Image($r('app.media.zfb_tab_home'))
            .width(35)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_money'))
            .width(28).margin({ bottom: 2 })
          Text('理财')
            .fontSize(12)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_life'))
            .width(28).margin({ bottom: 2 })
          Text('生活')
            .fontSize(12)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_chat'))
            .width(28).margin({ bottom: 2 })
          Text('消息')
            .fontSize(12)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_me'))
            .width(28).margin({ bottom: 2 })
          Text('我的')
            .fontSize(12)
        }
        .layoutWeight(1)
      }
      .width('100%')
      .height(60)
      .backgroundColor('#fbfcfe')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#5b73de')
  }
}