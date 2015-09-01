







define void @t1(i8* %ptr) nounwind  {
entry:











  tail call void @llvm.prefetch( i8* %ptr, i32 1, i32 3, i32 1 )
  tail call void @llvm.prefetch( i8* %ptr, i32 0, i32 3, i32 1 )
  ret void
}

define void @t2(i8* %ptr) nounwind  {
entry:





  %tmp = getelementptr i8, i8* %ptr, i32 1023
  tail call void @llvm.prefetch( i8* %tmp, i32 0, i32 3, i32 1 )
  ret void
}

define void @t3(i32 %base, i32 %offset) nounwind  {
entry:






  %tmp1 = lshr i32 %offset, 2
  %tmp2 = add i32 %base, %tmp1
  %tmp3 = inttoptr i32 %tmp2 to i8*
  tail call void @llvm.prefetch( i8* %tmp3, i32 0, i32 3, i32 1 )
  ret void
}

define void @t4(i32 %base, i32 %offset) nounwind  {
entry:





  %tmp1 = shl i32 %offset, 2
  %tmp2 = add i32 %base, %tmp1
  %tmp3 = inttoptr i32 %tmp2 to i8*
  tail call void @llvm.prefetch( i8* %tmp3, i32 0, i32 3, i32 1 )
  ret void
}

declare void @llvm.prefetch(i8*, i32, i32, i32) nounwind

define void @t5(i8* %ptr) nounwind  {
entry:





  tail call void @llvm.prefetch( i8* %ptr, i32 0, i32 3, i32 0 )
  ret void
}

define void @t6() {
entry:








%red = alloca [100 x i8], align 1
%0 = getelementptr inbounds [100 x i8], [100 x i8]* %red, i32 0, i32 0
%1 = getelementptr inbounds [100 x i8], [100 x i8]* %red, i32 0, i32 50
call void @llvm.prefetch(i8* %0, i32 0, i32 3, i32 1)
call void @llvm.prefetch(i8* %1, i32 0, i32 3, i32 1)
ret void
}
