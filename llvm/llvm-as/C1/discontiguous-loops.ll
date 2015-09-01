


@.str96 = external constant [37 x i8], align 8    

define void @foo() nounwind {
bb:
  br label %ybb1

ybb1:                                              
  switch i32 undef, label %bb18 [
    i32 150, label %ybb2
    i32 151, label %bb17
    i32 152, label %bb19
    i32 157, label %ybb8
  ]

ybb2:                                              
  %tmp = icmp eq i8** undef, null                 
  br i1 %tmp, label %bb3, label %xbb6

bb3:                                              
  unreachable

xbb4:                                              
  store i32 0, i32* undef, align 8
  br i1 undef, label %xbb6, label %bb5

bb5:                                              
  call fastcc void @decl_mode_check_failed() nounwind
  unreachable

xbb6:                                              
  %tmp7 = icmp slt i32 undef, 0                   
  br i1 %tmp7, label %xbb4, label %ybb1

ybb8:                                              
  %tmp9 = icmp eq i8** undef, null                
  br i1 %tmp9, label %bb10, label %ybb12

bb10:                                             
  %tmp11 = load i8*, i8** undef, align 8               
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str96, i64 0, i64 0), i8* %tmp11) nounwind
  unreachable

ybb12:                                             
  br i1 undef, label %bb15, label %ybb13

ybb13:                                             
  %tmp14 = icmp sgt i32 undef, 0                  
  br i1 %tmp14, label %bb16, label %ybb1

bb15:                                             
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str96, i64 0, i64 0), i8* undef) nounwind
  unreachable

bb16:                                             
  unreachable

bb17:                                             
  unreachable

bb18:                                             
  unreachable

bb19:                                             
  unreachable
}

declare void @fatal(i8*, ...)

declare fastcc void @decl_mode_check_failed() nounwind
