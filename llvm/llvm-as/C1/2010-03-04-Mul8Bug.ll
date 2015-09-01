





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

define void @func_56(i64 %p_57, i32*** %p_58) nounwind ssp {
for.end:
  %conv49 = trunc i32 undef to i8                 
  %div.i = udiv i8 %conv49, 5                     
  %conv51 = zext i8 %div.i to i32                 
  %call55 = call i32 @qux(i32 undef, i32 -2) nounwind 
  %rem.i = urem i32 %call55, -1                   
  %cmp57 = icmp uge i32 %conv51, %rem.i           
  %conv58 = zext i1 %cmp57 to i32                 
  %call85 = call i32 @func_35(i32*** undef, i32 undef, i32 %conv58, i32 1247, i32 0) nounwind 
  ret void
}

declare i32 @func_35(i32***, i32, i32, i32, i32)

declare i32 @qux(i32, i32)
