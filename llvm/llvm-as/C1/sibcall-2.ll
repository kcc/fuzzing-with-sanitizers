




define void @t1(i8* nocapture %value) nounwind {
entry:





  %0 = bitcast i8* %value to void ()*
  tail call void %0() nounwind
  ret void
}

define void @t2(i32 %a, i8* nocapture %value) nounwind {
entry:





  %0 = bitcast i8* %value to void ()*
  tail call void %0() nounwind
  ret void
}

define void @t3(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i8* nocapture %value) nounwind {
entry:





  %0 = bitcast i8* %value to void ()*
  tail call void %0() nounwind
  ret void
}

define void @t4(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i8* nocapture %value) nounwind {
entry:





  %0 = bitcast i8* %value to void ()*
  tail call void %0() nounwind
  ret void
}
