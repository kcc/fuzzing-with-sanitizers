




@block = common global i8* null, align 8

define zeroext i8 @foo(i32 %i1, i32 %i2) {



entry:
  %idxprom = sext i32 %i1 to i64
  %0 = load i8*, i8** @block, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom1 = sext i32 %i2 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %0, i64 %idxprom1
  %2 = load i8, i8* %arrayidx2, align 1
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %return, label %if.then

if.then:                                          
  %cmp7 = icmp ugt i8 %1, %2
  %conv9 = zext i1 %cmp7 to i8
  br label %return

return:                                           
  %retval.0 = phi i8 [ %conv9, %if.then ], [ 1, %entry ]
  ret i8 %retval.0
}
