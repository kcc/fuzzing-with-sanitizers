



@x = common global <8 x float> zeroinitializer, align 32
declare i32 @f(i32, ...)



define void @test1() nounwind uwtable ssp {
entry:
  %0 = load <8 x float>, <8 x float>* @x, align 32
  %call = call i32 (i32, ...) @f(i32 1, <8 x float> %0)
  ret void
}
