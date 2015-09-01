


target datalayout =
"e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin9.8"

declare void @func2(x86_mmx)

define void @func1() nounwind {









        %tmp0 = bitcast <2 x i32><i32 0, i32 2> to x86_mmx
        call void @func2(x86_mmx %tmp0)
        ret void
}
