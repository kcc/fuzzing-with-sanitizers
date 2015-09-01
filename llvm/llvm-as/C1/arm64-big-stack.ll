
target triple = "arm64-apple-macosx10"










define void @foo() nounwind ssp {
entry:
  %buffer = alloca [33554432 x i8], align 1
  %arraydecay = getelementptr inbounds [33554432 x i8], [33554432 x i8]* %buffer, i64 0, i64 0
  call void @doit(i8* %arraydecay) nounwind
  ret void
}

declare void @doit(i8*)
