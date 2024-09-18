import InfoTop from '../components/InfoTop'
import InfoItem from '../components/InfoItem'
import InfoBottom from '../components/InfoBottom'
import font from '@ohos.font'
import { CommentData, createListRange } from '../model/CommentData'

// 创建数据测试
// let listArr: CommentData[] = createListRange()
// console.log('数组列表', JSON.stringify(listArr))

// 从1970年01月01号 0:0:0
// 时间戳 → 特殊的日期格式(数字类型), 利于比较运算
// let nowTime: number = new Date().getTime() // 05-16
// let lastTime: number = new Date('2024-03-02').getTime()
// console.log('时间戳', nowTime, lastTime)
// console.log('时间戳', (nowTime - lastTime) / 1000 / 3600 / 24)


@Entry
@Component
struct Index {
  @State commentList: CommentData[] = createListRange()

  // 一加载Index入口页面, 就进行注册
  // aboutToAppear → 会在组件一加载时, 自动调用执行(生命周期函数)
  aboutToAppear(): void {
    // 1. 注册字体
    font.registerFont({
      familyName: 'myfont',
      familySrc: '/fonts/iconfont.ttf'
    })

    this.handleSort(0)
  }

  // 处理喜欢
  handleLike (index: number) {
    // 1. 获取下标 或 id 加以区分
    // 子调用父的方法时, 每个子都能调用父的方法, 需要加以区分
    // 此时由于是数组操作, 可以传递下标, [快速定位到操作的是哪项]
    // 将来发请求 → id 作为区分值, 也可以
    // AlertDialog.show({
    //   message: index.toString()
    // })

    // 2. 父组件的方法, 如果抽取出来, 如果直接传递给子组件
    //    会有 this 指向问题, this 通常直接指向调用者
    //    需要, 用箭头函数函数包一层, 保证 this 还是指向父组件
    //    console.log('父组件的数据', this.commentList)

    // 3. 根据 index, 根据 数组数据, 进行判断 +1 还是 -1
    let itemData = this.commentList[index]
    if (itemData.isLike) {
      itemData.likeNum -= 1
    }
    else {
      itemData.likeNum += 1
    }
    itemData.isLike = !itemData.isLike

    // 4. 对于复杂类型: 状态对象, 状态数组, 只会对第一层数据, 进行监视变化
    // 数组.splice(从哪开始删除, 删除几个, 替换的项1, 替换的项2, ...)
    // this.commentList.splice(index, 1, itemData)
  }

  // 处理提交
  handleSubmit (content: string) {
    // 往数组的最前面, 新增一项
    const newItem: CommentData = new CommentData(
      "https://img0.baidu.com/it/u=3316636492,2799302396&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1708707600&t=fc2a4907d0fae5c7b2d2d5f1511c24b3",
      "我", new Date().getTime(), 5, 0, content, false)
    this.commentList = [newItem, ...this.commentList]
  }

  // 处理排序 0 最新 time时间戳,  1 最热 likeCount 点赞数
  handleSort (type: number) {
    if (type === 0) {
      // 时间戳, 从大到小排序
      this.commentList.sort((a, b) => {
        // a 前一项, b 后一项
        return b.time - a.time // 返回值如果 > 0, 交换位置
      })
    }
    else {
      // 点赞数, 从大到小排序
      this.commentList.sort((a, b) => {
        return b.likeNum - a.likeNum
      })
    }
  }
  build() {
    Column() {
      // 2. 使用字体测试
      // Text('\ue600')
      //   .fontFamily('myfont')
      //   .fontSize(30)
      //   .fontColor(Color.Red)
      // 头部标题组件
      InfoTop({
        onSort: (type: number) => {
          this.handleSort(type)
        }
      })

      // 中间
      List() {
        ForEach(this.commentList, (item: CommentData, index: number) => {
          ListItem() {
            // 列表项组件 - 将item对象, 通过prop传值, 传递下去
            InfoItem({
              index: index,
              itemObj: item,
              onLikeClick: (index: number) => {
                // 此处的this → 访问的是外部环境的 this → 就是父组件
                this.handleLike(index)
              }
            })
          }
        })
      }
      .layoutWeight(1)
      .padding({ bottom: 10 })

      // 底部
      InfoBottom({
        onSubmitComment: (content: string) => {
          this.handleSubmit(content)
        }
      })
    }
    .width('100%')
    .height('100%')
  }
}