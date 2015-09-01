



declare fp128 @llvm.sqrt.f128(fp128 %f)


define void @f1(fp128 *%ptr) {







  %orig = load fp128 , fp128 *%ptr
  %sqrt = call fp128 @llvm.sqrt.f128(fp128 %orig)
  store fp128 %sqrt, fp128 *%ptr
  ret void
}
