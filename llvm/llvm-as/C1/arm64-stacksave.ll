

target triple = "arm64-apple-macosx10.8.0"







define void @f() nounwind ssp {
entry:
  %savedstack = call i8* @llvm.stacksave() nounwind
  call void asm sideeffect "
  call void @llvm.stackrestore(i8* %savedstack) nounwind
  ret void
}

declare i8* @llvm.stacksave() nounwind
declare void @llvm.stackrestore(i8*) nounwind
