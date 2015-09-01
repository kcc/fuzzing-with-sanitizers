



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n32:64-S128"
target triple = "arm64-apple-ios3.0.0"

@block = common global i8* null, align 8

define zeroext i8 @fullGtU(i32 %i1, i32 %i2) {



















entry:
  %idxprom = sext i32 %i1 to i64
  %tmp = load i8*, i8** @block, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp, i64 %idxprom
  %tmp1 = load i8, i8* %arrayidx, align 1
  %idxprom1 = sext i32 %i2 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom1
  %tmp2 = load i8, i8* %arrayidx2, align 1
  %cmp = icmp eq i8 %tmp1, %tmp2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          
  %cmp7 = icmp ugt i8 %tmp1, %tmp2
  %conv9 = zext i1 %cmp7 to i8
  br label %return

if.end:                                           
  %inc = add nsw i32 %i1, 1
  %inc10 = add nsw i32 %i2, 1
  %idxprom11 = sext i32 %inc to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom11
  %tmp3 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = sext i32 %inc10 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom13
  %tmp4 = load i8, i8* %arrayidx14, align 1
  %cmp17 = icmp eq i8 %tmp3, %tmp4
  br i1 %cmp17, label %if.end25, label %if.then19

if.then19:                                        
  %cmp22 = icmp ugt i8 %tmp3, %tmp4
  %conv24 = zext i1 %cmp22 to i8
  br label %return

if.end25:                                         
  %inc26 = add nsw i32 %i1, 2
  %inc27 = add nsw i32 %i2, 2
  %idxprom28 = sext i32 %inc26 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom28
  %tmp5 = load i8, i8* %arrayidx29, align 1
  %idxprom30 = sext i32 %inc27 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom30
  %tmp6 = load i8, i8* %arrayidx31, align 1
  %cmp34 = icmp eq i8 %tmp5, %tmp6
  br i1 %cmp34, label %return, label %if.then36

if.then36:                                        
  %cmp39 = icmp ugt i8 %tmp5, %tmp6
  %conv41 = zext i1 %cmp39 to i8
  br label %return

return:                                           
  %retval.0 = phi i8 [ %conv9, %if.then ], [ %conv24, %if.then19 ], [ %conv41, %if.then36 ], [ 0, %if.end25 ]
  ret i8 %retval.0
}
