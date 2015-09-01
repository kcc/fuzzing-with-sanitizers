


target datalayout =
"e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin8"
@x = weak global i32 0          

define void @loop_2() nounwind  {








  %tmp = load volatile i32, i32* @x, align 4           
  %tmp1 = add i32 %tmp, 3         
  store volatile i32 %tmp1, i32* @x, align 4
  %tmp.1 = load volatile i32, i32* @x, align 4         
  %tmp1.1 = add i32 %tmp.1, 3             
  store volatile i32 %tmp1.1, i32* @x, align 4
  %tmp.2 = load volatile i32, i32* @x, align 4         
  %tmp1.2 = add i32 %tmp.2, 3             
  store volatile i32 %tmp1.2, i32* @x, align 4
  %tmp.3 = load volatile i32, i32* @x, align 4         
  %tmp1.3 = add i32 %tmp.3, 3             
  store volatile i32 %tmp1.3, i32* @x, align 4
  ret void
}
