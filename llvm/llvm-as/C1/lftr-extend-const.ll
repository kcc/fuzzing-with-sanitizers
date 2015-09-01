


target datalayout = "n8:16:32:64"





define void @foo() #0 {
entry:
  br label %for.body

for.body:                                         
  %i.01 = phi i16 [ 0, %entry ], [ %inc, %for.body ]
  %conv2 = sext i16 %i.01 to i32
  call void @bar(i32 %conv2) #1
  %inc = add i16 %i.01, 1
  %cmp = icmp slt i16 %inc, 512
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}




define i32 @postinc() #0 {
entry:
  br label %do.body

do.body:                                          
  %first.0 = phi i8 [ 0, %entry ], [ %inc, %do.body ]
  %conv = zext i8 %first.0 to i32
  call void  @bar(i32 %conv) #1
  %inc = add i8 %first.0, 1
  %cmp = icmp eq i8 %first.0, -1
  br i1 %cmp, label %do.end, label %do.body

do.end:                                           
  ret i32 0
}

declare void @bar(i32)

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
