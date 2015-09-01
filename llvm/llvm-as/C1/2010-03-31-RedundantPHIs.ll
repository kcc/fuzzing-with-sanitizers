




define i8* @cat(i8* %s1, ...) nounwind {
entry:
  br i1 undef, label %bb, label %bb3

bb:                                               
  unreachable

bb3:                                              
  store i8* undef, i8** undef, align 4
  br i1 undef, label %bb5, label %bb6

bb5:                                              
  unreachable

bb6:                                              
  br label %bb12

bb8:                                              
  br i1 undef, label %bb9, label %bb10

bb9:                                              
  %0 = load i8*, i8** undef, align 4                   
  %1 = load i8*, i8** undef, align 4                   
  br label %bb11

bb10:                                             
  br label %bb11

bb11:                                             
  br label %bb12

bb12:                                             
  br i1 undef, label %bb8, label %bb13

bb13:                                             
  ret i8* undef
}
