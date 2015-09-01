






target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"
target triple = "i386-apple-darwin9.8"

define internal i32 @test(i32 %x, i32 %y, i32 %z) nounwind {
entry:
  %0 = add nsw i32 %y, %z                         
  %1 = mul i32 %0, %x                             
  %2 = mul i32 %y, %z                             
  %3 = add nsw i32 %1, %2                         
  ret i32 %3
}

define i32 @test2() nounwind {
entry:
  %0 = call i32 @test(i32 1, i32 2, i32 4) nounwind 
  ret i32 14
}


