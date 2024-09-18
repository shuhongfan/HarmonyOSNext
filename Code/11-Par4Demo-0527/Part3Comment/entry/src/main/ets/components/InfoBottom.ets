@Component
struct InfoBottom {
  @State txt: string = ''
  onSubmitComment = (content: string) => {}

  build() {
    Row() {
      Row() {
        Text('\ue840')
          .fontFamily('myfont')
          .fontSize(18)
          .margin({ left: 20 })
        TextInput({
          placeholder: '写评论...',
          text: $$this.txt
        })
          .backgroundColor(Color.Transparent)
          .fontSize(18)
          .onSubmit(() => {
             // 这里不能直接添加, 需要调用父组件传递过来的方法
             this.onSubmitComment(this.txt)
          })
      }
      .height(40)
      .backgroundColor('#f5f6f5')
      .borderRadius(20)
      .margin({ left: 15, right: 20, top: 10, bottom: 10 })
      .layoutWeight(1)

      Text('\ue600')
        .fontFamily('myfont')
        .fontSize(26)
        .margin({ left: 6, right: 6 })

      Text('\ue61d')
        .fontFamily('myfont')
        .fontSize(26)
        .margin({ left: 6, right: 6 })
    }
    .height(60)
    .width('100%')
  }
}

export default InfoBottom