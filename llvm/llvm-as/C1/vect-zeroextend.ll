



target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-a0:0-n32"
target triple = "hexagon-unknown-linux-gnu"

define void @foo() nounwind {
entry:
  br i1 undef, label %for.cond30.preheader.lr.ph, label %for.end425

for.cond30.preheader.lr.ph:                       
  br label %for.cond37.preheader

for.cond37.preheader:                             
  %_p_vec_full = load <3 x i8>, <3 x i8>* undef, align 8
  %0 = zext <3 x i8> %_p_vec_full to <3 x i16>
  store <3 x i16> %0, <3 x i16>* undef, align 8
  br label %for.cond37.preheader

for.end425:                                       
  ret void
}
