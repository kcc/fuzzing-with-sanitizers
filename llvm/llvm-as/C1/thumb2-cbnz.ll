


declare double @foo(double) nounwind readnone

define void @t(i32 %c, double %b) {
entry:
  %cmp1 = icmp ne i32 %c, 0
  br i1 %cmp1, label %bb3, label %bb1

bb1:                                              
  unreachable

bb3:                                              
  %cmp2 = icmp ne i32 %c, 0
  br i1 %cmp2, label %bb7, label %bb5

bb5:                                              
  unreachable

bb7:                                              
  %cmp3 = icmp ne i32 %c, 0
  br i1 %cmp3, label %bb11, label %bb9

bb9:                                              


  %0 = tail call  double @foo(double %b) nounwind readnone 
  br label %bb11

bb11:                                             
  %1 = getelementptr i32, i32* undef, i32 0
  store i32 0, i32* %1
  ret void
}
