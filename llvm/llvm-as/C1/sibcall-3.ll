


define void @t1(i8* inreg %dst, i8* inreg %src, i8* inreg %len) nounwind {


  tail call void null(i8* inreg %dst, i8* inreg %src, i8* inreg %len) nounwind
  ret void
}

define void @t2(i8* inreg %dst, i8* inreg %src, i8* inreg %len) nounwind {


  tail call void null(i8* inreg %dst, i8* inreg %src) nounwind
  ret void
}
