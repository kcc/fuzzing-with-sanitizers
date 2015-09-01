
target triple = "x86_64-apple-macosx"

declare x86_fp80 @x1(i32) nounwind
declare i32 @x2(x86_fp80, x86_fp80) nounwind












define i32 @test1() nounwind uwtable ssp {
entry:
  %call = call x86_fp80 (...) bitcast (x86_fp80 (i32)* @x1 to x86_fp80 (...)*)(i32 -1)
  %call1 = call i32 @x2(x86_fp80 %call, x86_fp80 0xK401EFFFFFFFF00000000)
  ret i32 %call1
}

