



target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios7.0.0"

define void @caller2(i8* %a0, i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9) {
entry:
  tail call void @callee2(i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a0)
  ret void
}

declare void @callee2(i8*, i8*, i8*, i8*, i8*,
                      i8*, i8*, i8*, i8*, i8*)



























