





define void @nowarn() nounwind ssp {
entry:
  %buffer = alloca [12 x i8], align 1
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buffer, i64 0, i64 0
  call void @doit(i8* %arraydecay) nounwind
  ret void
}


define void @warn() nounwind ssp {
entry:
  %buffer = alloca [80 x i8], align 1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i64 0, i64 0
  call void @doit(i8* %arraydecay) nounwind
  ret void
}

declare void @doit(i8*)
