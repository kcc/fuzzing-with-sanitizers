


















target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

define i64 @f_load_madd_64(i64 %a, i64 %b, i64* nocapture readonly %c) #0 {
entry:
  %0 = load i64, i64* %c, align 8
  %mul = mul nsw i64 %0, %b
  %add = add nsw i64 %mul, %a
  ret i64 %add
}












define i32 @f_load_madd_32(i32 %a, i32 %b, i32* nocapture readonly %c) #0 {
entry:
  %0 = load i32, i32* %c, align 4
  %mul = mul nsw i32 %0, %b
  %add = add nsw i32 %mul, %a
  ret i32 %add
}








define i64 @f_load_msub_64(i64 %a, i64 %b, i64* nocapture readonly %c) #0 {
entry:
  %0 = load i64, i64* %c, align 8
  %mul = mul nsw i64 %0, %b
  %sub = sub nsw i64 %a, %mul
  ret i64 %sub
}









define i32 @f_load_msub_32(i32 %a, i32 %b, i32* nocapture readonly %c) #0 {
entry:
  %0 = load i32, i32* %c, align 4
  %mul = mul nsw i32 %0, %b
  %sub = sub nsw i32 %a, %mul
  ret i32 %sub
}








define i64 @f_load_mul_64(i64 %a, i64 %b, i64* nocapture readonly %c) #0 {
entry:
  %0 = load i64, i64* %c, align 8
  %mul = mul nsw i64 %0, %b
  ret i64 %mul
}








define i32 @f_load_mul_32(i32 %a, i32 %b, i32* nocapture readonly %c) #0 {
entry:
  %0 = load i32, i32* %c, align 4
  %mul = mul nsw i32 %0, %b
  ret i32 %mul
}








define i64 @f_load_mneg_64(i64 %a, i64 %b, i64* nocapture readonly %c) #0 {
entry:
  %0 = load i64, i64* %c, align 8
  %mul = sub i64 0, %b
  %sub = mul i64 %0, %mul
  ret i64 %sub
}











define i32 @f_load_mneg_32(i32 %a, i32 %b, i32* nocapture readonly %c) #0 {
entry:
  %0 = load i32, i32* %c, align 4
  %mul = sub i32 0, %b
  %sub = mul i32 %0, %mul
  ret i32 %sub
}










define i64 @f_load_smaddl(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = sext i32 %b to i64
  %conv1 = sext i32 %c to i64
  %mul = mul nsw i64 %conv1, %conv
  %add = add nsw i64 %mul, %a
  %0 = load i32, i32* %d, align 4
  %conv2 = sext i32 %0 to i64
  %add3 = add nsw i64 %add, %conv2
  ret i64 %add3
}









define i64 @f_load_smsubl_64(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = sext i32 %b to i64
  %conv1 = sext i32 %c to i64
  %mul = mul nsw i64 %conv1, %conv
  %sub = sub i64 %a, %mul
  %0 = load i32, i32* %d, align 4
  %conv2 = sext i32 %0 to i64
  %add = add nsw i64 %sub, %conv2
  ret i64 %add
}









define i64 @f_load_smull(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = sext i32 %b to i64
  %conv1 = sext i32 %c to i64
  %mul = mul nsw i64 %conv1, %conv
  %0 = load i32, i32* %d, align 4
  %conv2 = sext i32 %0 to i64
  %div = sdiv i64 %mul, %conv2
  ret i64 %div
}








define i64 @f_load_smnegl_64(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = sext i32 %b to i64
  %conv1 = sext i32 %c to i64
  %mul = sub nsw i64 0, %conv
  %sub = mul i64 %conv1, %mul
  %0 = load i32, i32* %d, align 4
  %conv2 = sext i32 %0 to i64
  %div = sdiv i64 %sub, %conv2
  ret i64 %div
}






define i64 @f_load_umaddl(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = zext i32 %b to i64
  %conv1 = zext i32 %c to i64
  %mul = mul i64 %conv1, %conv
  %add = add i64 %mul, %a
  %0 = load i32, i32* %d, align 4
  %conv2 = zext i32 %0 to i64
  %add3 = add i64 %add, %conv2
  ret i64 %add3
}









define i64 @f_load_umsubl_64(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = zext i32 %b to i64
  %conv1 = zext i32 %c to i64
  %mul = mul i64 %conv1, %conv
  %sub = sub i64 %a, %mul
  %0 = load i32, i32* %d, align 4
  %conv2 = zext i32 %0 to i64
  %add = add i64 %sub, %conv2
  ret i64 %add
}









define i64 @f_load_umull(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = zext i32 %b to i64
  %conv1 = zext i32 %c to i64
  %mul = mul i64 %conv1, %conv
  %0 = load i32, i32* %d, align 4
  %conv2 = zext i32 %0 to i64
  %div = udiv i64 %mul, %conv2
  ret i64 %div
}








define i64 @f_load_umnegl_64(i64 %a, i32 %b, i32 %c, i32* nocapture readonly %d) #0 {
entry:
  %conv = zext i32 %b to i64
  %conv1 = zext i32 %c to i64
  %mul = sub nsw i64 0, %conv
  %sub = mul i64 %conv1, %mul
  %0 = load i32, i32* %d, align 4
  %conv2 = zext i32 %0 to i64
  %div = udiv i64 %sub, %conv2
  ret i64 %div
}






define i64 @f_store_madd_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  store i64 %a, i64* %e, align 8
  %mul = mul nsw i64 %0, %b
  %add = add nsw i64 %mul, %a
  ret i64 %add
}









define i32 @f_store_madd_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  store i32 %a, i32* %e, align 4
  %mul = mul nsw i32 %0, %b
  %add = add nsw i32 %mul, %a
  ret i32 %add
}








define i64 @f_store_msub_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  store i64 %a, i64* %e, align 8
  %mul = mul nsw i64 %0, %b
  %sub = sub nsw i64 %a, %mul
  ret i64 %sub
}









define i32 @f_store_msub_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  store i32 %a, i32* %e, align 4
  %mul = mul nsw i32 %0, %b
  %sub = sub nsw i32 %a, %mul
  ret i32 %sub
}








define i64 @f_store_mul_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  store i64 %a, i64* %e, align 8
  %mul = mul nsw i64 %0, %b
  ret i64 %mul
}








define i32 @f_store_mul_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  store i32 %a, i32* %e, align 4
  %mul = mul nsw i32 %0, %b
  ret i32 %mul
}








define i64 @f_prefetch_madd_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  %1 = bitcast i64* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 0, i32 0, i32 1)
  %mul = mul nsw i64 %0, %b
  %add = add nsw i64 %mul, %a
  ret i64 %add
}








declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #2

define i32 @f_prefetch_madd_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  %1 = bitcast i32* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 1, i32 0, i32 1)
  %mul = mul nsw i32 %0, %b
  %add = add nsw i32 %mul, %a
  ret i32 %add
}







define i64 @f_prefetch_msub_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  %1 = bitcast i64* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 0, i32 1, i32 1)
  %mul = mul nsw i64 %0, %b
  %sub = sub nsw i64 %a, %mul
  ret i64 %sub
}








define i32 @f_prefetch_msub_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  %1 = bitcast i32* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 1, i32 1, i32 1)
  %mul = mul nsw i32 %0, %b
  %sub = sub nsw i32 %a, %mul
  ret i32 %sub
}







define i64 @f_prefetch_mul_64(i64 %a, i64 %b, i64* nocapture readonly %cp, i64* nocapture %e) #1 {
entry:
  %0 = load i64, i64* %cp, align 8
  %1 = bitcast i64* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 0, i32 3, i32 1)
  %mul = mul nsw i64 %0, %b
  ret i64 %mul
}







define i32 @f_prefetch_mul_32(i32 %a, i32 %b, i32* nocapture readonly %cp, i32* nocapture %e) #1 {
entry:
  %0 = load i32, i32* %cp, align 4
  %1 = bitcast i32* %e to i8*
  tail call void @llvm.prefetch(i8* %1, i32 1, i32 3, i32 1)
  %mul = mul nsw i32 %0, %b
  ret i32 %mul
}







define i64 @fall_through(i64 %a, i64 %b, i64* nocapture readonly %c) #0 {
entry:
  %0 = load i64, i64* %c, align 8
  br label %block1

block1:
  %mul = mul nsw i64 %0, %b
  %add = add nsw i64 %mul, %a
  %tmp = ptrtoint i8* blockaddress(@fall_through, %block1) to i64
  %ret = add nsw i64 %tmp, %add
  ret i64 %ret
}













define i32 @crash_check(i8** nocapture readnone %data) #0 {
entry:
  br label %while.cond

while.cond:
  br label %while.cond
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }




