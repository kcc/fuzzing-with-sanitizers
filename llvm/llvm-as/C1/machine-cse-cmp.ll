


@G1 = external global i32
@G2 = external global i32

define i32 @f1(i32 %cond1, i32 %x1, i32 %x2, i32 %x3) {
entry:





    %tmp1 = icmp eq i32 %cond1, 0
    %tmp2 = select i1 %tmp1, i32 %x1, i32 %x2
    %tmp3 = select i1 %tmp1, i32 %x2, i32 %x3
    %tmp4 = add i32 %tmp2, %tmp3
    ret i32 %tmp4
}

@foo = external global i32
@bar = external global [250 x i8], align 1



define void @f2() nounwind ssp {
entry:





  %0 = load i32, i32* @foo, align 4
  %cmp28 = icmp sgt i32 %0, 0
  br i1 %cmp28, label %for.body.lr.ph, label %for.cond1.preheader

for.body.lr.ph:                                   
  %1 = icmp sgt i32 %0, 1
  %smax = select i1 %1, i32 %0, i32 1
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([250 x i8], [250 x i8]* @bar, i32 0, i32 0), i8 0, i32 %smax, i32 1, i1 false)
  unreachable

for.cond1.preheader:                              
  ret void
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind


define i8* @f3(i8* %base, i32* nocapture %offset, i32 %size) nounwind {
entry:




%0 = load i32, i32* %offset, align 4
%cmp = icmp slt i32 %0, %size
%s = sub nsw i32 %0, %size
%size2 = sub nsw i32 %size, 0
br i1 %cmp, label %return, label %if.end

if.end:

%sub = sub nsw i32 %0, %size2
%s2 = sub nsw i32 %s, %size
%s3 = sub nsw i32 %sub, %s2





store i32 %s3, i32* %offset, align 4
%add.ptr = getelementptr inbounds i8, i8* %base, i32 %sub
br label %return

return:
%retval.0 = phi i8* [ %add.ptr, %if.end ], [ null, %entry ]
ret i8* %retval.0
}
