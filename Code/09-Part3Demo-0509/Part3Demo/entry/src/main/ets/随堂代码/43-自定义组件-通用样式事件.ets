import { HelloCom } from '../components/HelloCom'

@Entry
@Component
struct Index {
  build() {
    Column() {
      HelloCom()
        .width(250)
        .height(60)
        .backgroundColor(Color.Gray)
        .onClick(() => {
          AlertDialog.show({
            message: '测试点击'
          })
        })
    }
  }
}