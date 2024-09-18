@Entry
@Component
struct Index {
  @State message: string = '学鸿蒙来黑马';
  build() {
    // 控制组件间的距离，可以给 Column 设置 { space: 间隙大小 }
    Column({ space: 15 }) {
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)
      Button('登录')
        .width(200)
    }
  }
}

