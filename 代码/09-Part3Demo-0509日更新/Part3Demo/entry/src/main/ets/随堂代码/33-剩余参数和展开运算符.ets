// ...数组名  => 可以收集剩余的参数
function sum (n1: number, n2: number, ...argsArr: number[]) {
  let total: number = n1 + n2
  // 遍历剩余参数, 如果有剩余的参数, 就继续累加
  for (let temp of argsArr) {
    total += temp
  }
  console.log('结果', total)
  return total
}
sum(1, 2)
sum(1, 2, 3, 4)
sum(1, 2, 3, 4, 5, 6)

// ... 展开运算符, 用于数组的平铺合并
let arr1: number[] = [1,2,3]
let arr2: number[] = [4,5,6]
let newArr: number[] = [...arr1, ...arr2]
console.log('最终的数组', newArr)



@Entry
@Component
struct Index {
  build() {
    Column() {

    }
  }
}

