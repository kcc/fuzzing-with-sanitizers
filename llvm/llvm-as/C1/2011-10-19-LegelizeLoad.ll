

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i8:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i8> }

@i = global <2 x i8> <i8 150, i8 100>, align 8
@j = global <2 x i8> <i8 10, i8 13>, align 8
@res = common global %union.anon zeroinitializer, align 8






define i32 @main() nounwind uwtable {
entry:


  %0 = load <2 x i8>, <2 x i8>* @i, align 8
  %1 = load <2 x i8>, <2 x i8>* @j, align 8
  %div = sdiv <2 x i8> %1, %0
  store <2 x i8> %div, <2 x i8>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  ret i32 0

}
