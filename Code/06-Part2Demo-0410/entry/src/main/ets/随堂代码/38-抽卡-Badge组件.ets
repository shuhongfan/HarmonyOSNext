@Entry
@Component
struct Index {
  build() {
    Column() {
      Badge({
        count: 1,
        position: BadgePosition.RightTop,
        style: {
          fontSize: 14,
          badgeSize: 20,
          badgeColor: '#fa2a2d'
        }
      }) {
        Image($r('app.media.bg_01'))
          .width(100)
      }


      Badge({
        count: 1,
        position: BadgePosition.RightTop,
        style: {
          fontSize: 14,
          badgeSize: 20,
          badgeColor: '#fa2a2d'
        }
      }) {
        Image($r('app.media.bg_02'))
          .width(100)
      }
    }
  }
}