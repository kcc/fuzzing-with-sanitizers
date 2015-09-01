


%struct.__va_list_tag = type { i32, i32, i8*, i8* }

define void @foo(i32 %x, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %ap12)
  %ap3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  call void @bar(%struct.__va_list_tag* %ap3) nounwind
  call void @llvm.va_end(i8* %ap12)
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare void @bar(%struct.__va_list_tag*)

declare void @llvm.va_end(i8*) nounwind
