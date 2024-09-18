interface IAnimal {
  name: string
  age: number
}
interface ICat extends IAnimal {
  hair: string
}
interface IDog extends IAnimal {
  color: string
}
let dog1: IDog = {
  name: '小泰迪',
  age: 2,
  color: '棕色'
}

@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

