

declare noalias i8* @malloc(i32) nounwind

define internal void @gl_DrawPixels(i32 %width, i32 %height, i32 %format, i32 %type, i8* %pixels) nounwind {
entry:
  br i1 undef, label %bb3.i, label %bb3

bb3.i:                                            
  unreachable

gl_error.exit:                                    
  ret void

bb3:                                              
  br i1 false, label %bb5, label %bb4

bb4:                                              
  br label %bb5

bb5:                                              
  br i1 undef, label %bb19, label %bb22

bb19:                                             
  switch i32 %type, label %bb3.i6.i [
    i32 5120, label %bb1.i13
    i32 5121, label %bb1.i13
    i32 6656, label %bb9.i.i6
  ]

bb9.i.i6:                                         
  br label %bb1.i13

bb3.i6.i:                                         
  unreachable

bb1.i13:                                          
  br i1 undef, label %bb3.i17, label %bb2.i16

bb2.i16:                                          
  unreachable

bb3.i17:                                          
  br i1 undef, label %bb4.i18, label %bb23.i

bb4.i18:                                          
  %0 = mul nsw i32 %height, %width
  %1 = and i32 %0, 7
  %not..i = icmp ne i32 %1, 0
  %2 = zext i1 %not..i to i32
  %storemerge2.i = add i32 0, %2
  %3 = call noalias i8* @malloc(i32 %storemerge2.i) nounwind
  br i1 undef, label %bb3.i9, label %bb9.i

bb9.i:                                            
  br i1 undef, label %bb13.i19, label %bb.i24.i

bb13.i19:                                         
  br i1 undef, label %bb14.i20, label %bb15.i

bb14.i20:                                         
  unreachable

bb15.i:                                           
  unreachable

bb.i24.i:                                         
  %storemerge1.i21.i = phi i32 [ %4, %bb.i24.i ], [ 0, %bb9.i ]
  %4 = add i32 %storemerge1.i21.i, 1
  %exitcond47.i = icmp eq i32 %4, %storemerge2.i
  br i1 %exitcond47.i, label %bb22, label %bb.i24.i

bb23.i:                                           
  unreachable

bb3.i9:                                           
  unreachable

bb22:                                             
  br i1 undef, label %gl_error.exit, label %bb23

bb23:                                             
  ret void
}
