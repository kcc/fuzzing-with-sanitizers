
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"




@.LC0 = internal global [5 x i8] c".LC0\00"
@.LC2 = internal global [5 x i8] c".LC2\00"

define i32 @foo(double %X, double %Y) nounwind readnone {
  
  %cmp = fcmp oeq double %X, 1.000000e+00
  %conv = zext i1 %cmp to i32
  %cmp1 = fcmp oeq double %Y, 3.000000e+00
  %conv2 = zext i1 %cmp1 to i32
  %add = add nsw i32 %conv2, %conv
  ret i32 %add
}








