




define x86_64_win64cc void @average_va(i32 %count, ...) nounwind {
entry:






  %ap = alloca i8*, align 8                       
  %ap.0 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap.0)
  ret void
}

declare void @llvm.va_start(i8*) nounwind
declare void @llvm.va_copy(i8*, i8*) nounwind
declare void @llvm.va_end(i8*) nounwind




define x86_64_win64cc i8** @f5(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap.0)
  ret i8** %ap
}




define x86_64_win64cc i8** @f4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap.0)
  ret i8** %ap
}




define x86_64_win64cc i8** @f3(i64 %a0, i64 %a1, i64 %a2, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap.0)
  ret i8** %ap
}









define x86_64_win64cc void @copy1(i64 %a0, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  %cp.0 = bitcast i8** %cp to i8*
  call void @llvm.va_start(i8* %ap.0)
  call void @llvm.va_copy(i8* %cp.0, i8* %ap.0)
  ret void
}






define x86_64_win64cc void @copy4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  %cp.0 = bitcast i8** %cp to i8*
  call void @llvm.va_start(i8* %ap.0)
  call void @llvm.va_copy(i8* %cp.0, i8* %ap.0)
  ret void
}










define x86_64_win64cc i32 @arg4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap.0 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap.0)
  %tmp = va_arg i8** %ap, i32
  ret i32 %tmp
}
