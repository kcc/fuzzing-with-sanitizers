






define void @test_load_combine_aa(i32*, i32*, i32*, i32* noalias) {
  %a = load i32, i32* %0
  store i32 0, i32* %3
  %b = load i32, i32* %0
  store i32 %a, i32* %1
  store i32 %b, i32* %2
  ret void
}
