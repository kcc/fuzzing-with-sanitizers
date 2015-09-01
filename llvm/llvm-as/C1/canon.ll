






define internal {} @test() {
  ret {} undef
}

define internal {i32} @test2() {
  ret {i32} undef
}

define void @caller() {
  call {} @test()
  %X = call {i32} @test2()
  %Y = extractvalue {i32} %X, 0
  call void @user(i32 %Y, {i32} %X)
  ret void
}

declare void @user(i32, {i32})
