











define void @t(i8* nocapture %a, i8* nocapture %b) nounwind {
entry:














  %__src1.i = bitcast i8* %b to i32*              
  %__dest2.i = bitcast i8* %a to i32*             
  %tmp.i = load i32, i32* %__src1.i, align 1           
  store i32 %tmp.i, i32* %__dest2.i, align 1
  ret void
}

define void @hword(double* %a, double* %b) nounwind {
entry:









  %tmp = load double, double* %a, align 2
  store double %tmp, double* %b, align 2
  ret void
}

define void @byte(double* %a, double* %b) nounwind {
entry:









  %tmp = load double, double* %a, align 1
  store double %tmp, double* %b, align 1
  ret void
}

define void @byte_word_ops(i32* %a, i32* %b) nounwind {
entry:









  %tmp = load i32, i32* %a, align 1
  store i32 %tmp, i32* %b, align 1
  ret void
}
