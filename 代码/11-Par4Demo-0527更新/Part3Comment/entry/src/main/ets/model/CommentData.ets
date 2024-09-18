// 准备评论的数据类
@Observed
export class CommentData {
  avatar: string; // 头像
  name: string; // 昵称
  level: number; //用户等级
  likeNum: number; //点赞数量
  commentTxt: string; //评论内容
  isLike: boolean; //是否喜欢
  levelIcon: Resource // level等级
  timeString: string // 发布时间-基于时间戳处理后,展示给用户看的属性(2天前)
  time: number // 时间戳-数字格式的日期

  constructor(avatar: string, name: string, time: number, level: number, lickNum: number, commentTxt: string, isLike: boolean, ) {
    this.avatar = avatar
    this.name = name
    this.timeString = this.convertTime(time) // 拿到的时间格式, 通常是时间戳的格式  1645820201123
    this.time = time
    this.level = level
    this.likeNum = lickNum
    this.commentTxt = commentTxt
    this.isLike = isLike
    this.levelIcon = this.convertLevel(this.level) // 基于等级数字, 转换成图片路径
  }

  convertTime(timestamp: number) {
    // 获取当前的时间戳
    const currentTimestamp = new Date().getTime();
    const timeDifference = (currentTimestamp - timestamp) / 1000; // 转换为秒

    if (timeDifference < 5 || timeDifference == 0) {
      return "刚刚";
    } else if (timeDifference < 60) {
      return `${Math.floor(timeDifference)}秒前`;
    } else if (timeDifference < 3600) {
      return `${Math.floor(timeDifference / 60)}分钟前`;
    } else if (timeDifference < 86400) {
      return `${Math.floor(timeDifference / 3600)}小时前`;
    } else if (timeDifference < 604800) {
      return `${Math.floor(timeDifference / 86400)}天前`;
    } else if (timeDifference < 2592000) {
      return `${Math.floor(timeDifference / 604800)}周前`;
    } else if (timeDifference < 31536000) {
      return `${Math.floor(timeDifference / 2592000)}个月前`;
    } else {
      return `${Math.floor(timeDifference / 31536000)}年前`;
    }
  }

  // 基于传入的level,转换成图片路径
  convertLevel(level: number) {
    const iconList = [
      $r('app.media.level_1'),
      $r('app.media.level_2'),
      $r('app.media.level_3'),
      $r('app.media.level_4'),
      $r('app.media.level_5'),
      $r('app.media.level_6'),
    ]
    return iconList[level]
  }
}

// 封装一个方法, 创建假数据
export const createListRange = (): CommentData[] => {
  let result: CommentData[] = new Array()
  result = [
    new CommentData(`https://fastly.picsum.photos/id/770/600/600.jpg?hmac=tuK9EHg1ifTU3xKAiZj2nHSdWy4mk7enhylgOc2BW7E`, "雪山飞狐", 1645820201123, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '23年一年干完的事😂😂😂真的非常仓促', false),
    new CommentData(`https://fastly.picsum.photos/id/225/600/600.jpg?hmac=v97zt_t4mxeyMttX_m09pxhCvftiTxFR1MMBZi5HQxs`, "千纸鹤", 1677356201123, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), 'Netty对象池源码分析来啦！juejin.cn欢迎点赞[奸笑]', false),
    new CommentData(`https://fastly.picsum.photos/id/122/600/600.jpg?hmac=1oA93YbjYVt96DcJcGQ5PLthzjUsdtrnBQaM0USBozI`, "烟雨江南", 1688772201123, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '有一个不听劝的Stable Diffusion出图的小伙伴，找我给她装填脑。 一个资深的IT工程师不能受这个委屈。', false),
    new CommentData(`https://fastly.picsum.photos/id/654/600/600.jpg?hmac=ewnK6Bx_MKQLJa9waZOV1xNO7--K5oSwCShtz1JDYw8`, "魔法小精灵", 1697484201123, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '有一点可以确信 前后端开发界限越来越模糊。后端可以不写 但是不能不会。', false),
    new CommentData(`https://fastly.picsum.photos/id/345/600/600.jpg?hmac=EQflzbIadAglm0RzotyKXM2itPfC49fR3QE7eW_UaPo`, "独行侠", 1704067200000, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '今天看到一个帖子，挺有意思的。', false),
    new CommentData(`https://fastly.picsum.photos/id/905/600/600.jpg?hmac=DvIKicBZ45DEZoZFwdZ62VbmaCwkK4Sv7rwYzUvwweU`, "枫叶飘零", 1706745600000, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '我想了搞钱的路子， 1：投资理财， 后来发下，不投资就是最好的理财， 2：买彩票，后来发现彩票都是人家预定好的，根本不是随机的，卒， 3：开店创业，隔行如隔山，开店失败，卒。', false),
    new CommentData(`https://fastly.picsum.photos/id/255/600/600.jpg?hmac=-lfdnAl71_eAIy1OPAupFFPh7EOJPmQRJFg-y7lRB3s`, "星空漫步", 1707523200000, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '优胜劣汰，自然选择吧，没什么好怪的。都是crud，招个大学生就能干了。', false),
    new CommentData(`https://fastly.picsum.photos/id/22/600/600.jpg?hmac=QEZq7KUHwBZCt3kGSEHMwJlZfnzCxCeBgHjYj7iQ-UY`, "剑指苍穹", 1708300800000, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '白嫖ChatGPT4的功能。然后，抱着试一试的态度把玩了一下。发现真的好用。', false),
    new CommentData(`https://fastly.picsum.photos/id/439/600/600.jpg?hmac=LC9k_bzrN0NhKRyV62fou3ix3cRFZKNfAyXgxGs6zh8`, "黑暗王国", 1708646400000, Math.floor(Math.random()*6) , Math.floor(Math.random()*100), '字数越少，事情越大。', false),
  ]
  return result
}


