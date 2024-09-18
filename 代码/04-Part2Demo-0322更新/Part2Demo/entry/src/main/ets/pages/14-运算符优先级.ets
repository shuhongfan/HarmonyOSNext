// 运算符的优先级
// 1. 小括号
// 2. 一元  ++  --  !

// 3. 算数  * / %   + -
// 4. 比较  >  <   >=  <= ,  == !=

// 5. 逻辑 && ||
// 6. 赋值 =

console.log('运算符优先级', 2 + 2 * 3) // 8
console.log('运算符优先级', (2 + 2) * 3) // 12
console.log('运算符优先级', 2 * 3 > 4 == false) // false
console.log('运算符优先级', !true == 3 * 3 > 4) // false

@Entry
@Component
struct Index {
  build() {
    
  }
}