

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

define internal i32 @foo() nounwind noinline ssp {
entry:
  ret i32 0



}

declare i32 @bar() 

define internal i32 @test(i32 %c) nounwind noinline ssp {
bb:
  %tmp1 = icmp ne i32 %c, 0                       
  %tmp2 = select i1 %tmp1, i32 ()* @foo, i32 ()* @bar 
  %tmp3 = tail call i32 %tmp2() nounwind          
  ret i32 %tmp3
}

define i32 @main() nounwind ssp {
bb:
  %tmp = tail call i32 @test(i32 1)               
  ret i32 %tmp
}
