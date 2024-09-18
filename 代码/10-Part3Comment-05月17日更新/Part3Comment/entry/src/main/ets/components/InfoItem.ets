import { CommentData } from '../model/CommentData'

@Component
struct InfoItem {
  @Prop itemObj: CommentData
  @Prop index: number
  onLikeClick = (index: number) => {}

  build() {
    Column() {
      // 1. 头像, 昵称, 等级
      Row() {
        Image(this.itemObj.avatar)
          .width(30).aspectRatio(1)
          .margin({ top: 10 })
          .borderRadius(15)
        Text(this.itemObj.name)
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({ top: 10, left: 8 })
        Image(this.itemObj.levelIcon)
          .width(20).aspectRatio(1)
          .margin({ top: 10, left: 8 })
          .borderRadius(15)
      }
      // 2. 评论内容
      Text(this.itemObj.commentTxt)
        .fontSize(13)
        .fontColor(Color.Black)
        .margin({ left: 40, top: 0, bottom: 8 })

      // 3. 评论日期 和 点赞互动
      Row() {
        Text(this.itemObj.convertTime(this.itemObj.time))
          .fontSize(11)
          .fontColor(Color.Gray)
        Row() {
          Image(this.itemObj.isLike ? $r('app.media.like_select') : $r('app.media.like_unselect'))
            .width(15).aspectRatio(1)
          Text(this.itemObj.likeNum.toString())
            .fontSize(11)
            .fontColor(this.itemObj.isLike ? Color.Blue : Color.Gray)
        }
        .onClick(() => {
          // 此处的this是子组件
          // 让当前项的 likeNum 变化 (老爹的数据, 需要调用老爹的方法才能改)
          this.onLikeClick(this.index)
        })
      }
      .padding({ left: 40, top: 5 })
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding({ left: 15, right: 15 })
    .alignItems(HorizontalAlign.Start)
  }
}

export default InfoItem