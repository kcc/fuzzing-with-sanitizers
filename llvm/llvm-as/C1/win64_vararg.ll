




define void @average_va(i32 %count, ...) nounwind {
entry:






  %ap = alloca i8*, align 8                       
  %ap1 = bitcast i8** %ap to i8*                  
  call void @llvm.va_start(i8* %ap1)
  ret void
}

declare void @llvm.va_start(i8*) nounwind
declare void @llvm.va_copy(i8*, i8*) nounwind




define i8* @f5(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  ret i8* %ap1
}




define i8* @f4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  ret i8* %ap1
}




define i8* @f3(i64 %a0, i64 %a1, i64 %a2, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  ret i8* %ap1
}











define void @copy1(i64 %a0, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  %cp1 = bitcast i8** %cp to i8*
  call void @llvm.va_start(i8* %ap1)
  call void @llvm.va_copy(i8* %cp1, i8* %ap1)
  ret void
}








define void @copy4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  %cp1 = bitcast i8** %cp to i8*
  call void @llvm.va_start(i8* %ap1)
  call void @llvm.va_copy(i8* %cp1, i8* %ap1)
  ret void
}












define i32 @arg4(i64 %a0, i64 %a1, i64 %a2, i64 %a3, ...) nounwind {
entry:
  %ap = alloca i8*, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %tmp = va_arg i8** %ap, i32
  ret i32 %tmp
}

define void @sret_arg(i32* sret %agg.result, i8* nocapture readnone %format, ...) {
entry:
  %ap = alloca i8*
  %ap_i8 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap_i8)
  %tmp = va_arg i8** %ap, i32
  store i32 %tmp, i32* %agg.result
  ret void
}









