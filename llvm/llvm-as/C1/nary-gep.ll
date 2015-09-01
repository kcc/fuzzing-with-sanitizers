

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-unknown-unknown"

declare void @foo(float*)







define void @reassociate_gep(float* %a, i64 %i, i64 %j) {

  %1 = add i64 %i, %j
  %2 = getelementptr float, float* %a, i64 %i

  call void @foo(float* %2)

  %3 = getelementptr float, float* %a, i64 %1

  call void @foo(float* %3)

  ret void
}











define void @reassociate_gep_nsw(float* %a, i32 %i, i32 %j) {

  %idxprom.j = sext i32 %j to i64
  %1 = getelementptr float, float* %a, i64 %idxprom.j

  call void @foo(float* %1)


  %2 = add nsw i32 %i, %j
  %idxprom.2 = sext i32 %2 to i64
  %3 = getelementptr float, float* %a, i64 %idxprom.2


  call void @foo(float* %3)


  %4 = add nsw i32 %2, %i
  %idxprom.4 = sext i32 %4 to i64
  %5 = getelementptr float, float* %a, i64 %idxprom.4

  call void @foo(float* %5)


  ret void
}










define void @reassociate_gep_assume(float* %a, i32 %i, i32 %j) {

  
  %cmp = icmp sgt i32 %j, -1
  call void @llvm.assume(i1 %cmp)
  %1 = add i32 %i, %j
  %cmp2 = icmp sgt i32 %1, -1
  call void @llvm.assume(i1 %cmp2)

  %idxprom.j = zext i32 %j to i64
  %2 = getelementptr float, float* %a, i64 %idxprom.j

  call void @foo(float* %2)


  %idxprom.1 = zext i32 %1 to i64
  %3 = getelementptr float, float* %a, i64 %idxprom.1


  call void @foo(float* %3)


  ret void
}


define void @reassociate_gep_no_nsw(float* %a, i32 %i, i32 %j) {

  %1 = add i32 %i, %j
  %2 = getelementptr float, float* %a, i32 %j

  call void @foo(float* %2)
  %3 = getelementptr float, float* %a, i32 %1

  call void @foo(float* %3)
  ret void
}

define void @reassociate_gep_128(float* %a, i128 %i, i128 %j) {

  %1 = add i128 %i, %j
  %2 = getelementptr float, float* %a, i128 %i

  call void @foo(float* %2)

  %3 = getelementptr float, float* %a, i128 %1


  call void @foo(float* %3)

  ret void
}

declare void @llvm.assume(i1)
