


define float @test(float %x) {
entry:

  %0 = call float asm "ex2.approx.ftz.f32 $0, $1
  ret float %0
}

define i32 @foo(i1 signext %cond, i32 %a, i32 %b) #0 {
entry:

  %0 = tail call i32 asm "selp.b32 $0, $1, $2, $3
  ret i32 %0
}
