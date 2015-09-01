



target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

define <4 x i64> @broadcast128(<2 x i64> %src) {
  
  
  %1 = alloca <2 x i64>, align 16
  %2 = bitcast <2 x i64>* %1 to i8*
  store <2 x i64> %src, <2 x i64>* %1, align 16
  %3 = call <4 x i64> @llvm.x86.avx2.vbroadcasti128(i8* %2)
  ret <4 x i64> %3
}

declare <4 x i64> @llvm.x86.avx2.vbroadcasti128(i8*) #1
