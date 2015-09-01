
target triple = "arm64-apple-ios"




define i8* @t1(i8* %base, i32* nocapture %offset, i32 %size) nounwind {
entry:









 %0 = load i32, i32* %offset, align 4
 %cmp = icmp slt i32 %0, %size
 %s = sub nsw i32 %0, %size
 br i1 %cmp, label %return, label %if.end

if.end:
 %sub = sub nsw i32 %0, %size
 %s2 = sub nsw i32 %s, %size
 %s3 = sub nsw i32 %sub, %s2
 store i32 %s3, i32* %offset, align 4
 %add.ptr = getelementptr inbounds i8, i8* %base, i32 %sub
 br label %return

return:
 %retval.0 = phi i8* [ %add.ptr, %if.end ], [ null, %entry ]
 ret i8* %retval.0
}


define i8* @t2(i8* %base, i32* nocapture %offset) nounwind {
entry:







 %0 = load i32, i32* %offset, align 4
 %cmp = icmp slt i32 %0, 1
 br i1 %cmp, label %return, label %if.end

if.end:
 %sub = sub nsw i32 %0, 1
 store i32 %sub, i32* %offset, align 4
 %add.ptr = getelementptr inbounds i8, i8* %base, i32 %sub
 br label %return

return:
 %retval.0 = phi i8* [ %add.ptr, %if.end ], [ null, %entry ]
 ret i8* %retval.0
}
