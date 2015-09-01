

define i32 @test1(i32 %x) {
  %div = sdiv exact i32 %x, 25
  ret i32 %div



}

define i32 @test2(i32 %x) {
  %div = sdiv exact i32 %x, 24
  ret i32 %div




}

define <4 x i32> @test3(<4 x i32> %x) {
  %div = sdiv exact <4 x i32> %x, <i32 24, i32 24, i32 24, i32 24>
  ret <4 x i32> %div






}
