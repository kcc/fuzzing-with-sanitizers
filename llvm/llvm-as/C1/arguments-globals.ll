








@g = external global i32

define void @test(i1 %c, i32* %arg1, i32* %arg2) {
  
  
  %A = alloca i32, align 4
  %B = select i1 %c, i32* %arg1, i32* %arg2
  %C = select i1 %c, i32* @g, i32* %A

  ret void
}
