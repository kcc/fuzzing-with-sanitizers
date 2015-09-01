



define void @test(i32 %in) personality void()* null {
  landingpad {} filter i32 %in
}
