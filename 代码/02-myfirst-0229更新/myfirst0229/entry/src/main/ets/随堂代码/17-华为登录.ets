@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // 构建界面核心思路：
    // 1. 排版（思考布局）
    // 2. 内容 (基础组件)
    // 3. 美化 (属性方法)
    Column({ space: 15 }) {
      Image($r('app.media.huawei'))
        .width(50)
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)
      Button('登录')
        .width('100%')
      Row({ space: 15 }) {
        Text('前往注册')
        Text('忘记密码')
      }
    }
    .width('100%')
    .padding(20)
  }
}

