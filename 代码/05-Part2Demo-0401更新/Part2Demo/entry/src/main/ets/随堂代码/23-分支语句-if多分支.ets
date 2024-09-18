let score: number = 35

if (score >= 90) {
  console.log('评价:', '优秀')
}
else if (score >= 80) {
  console.log('评价:', '良好')
}
else if (score >= 60) {
  console.log('评价:', '及格')
}
else {
  console.log('评价:', '不及格')
}

@Entry
@Component
struct Index {
  build() {

  }
}