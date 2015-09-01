








define i64 @test1(i32 %i, ...) nounwind optsize {
entry:
  %g = alloca i8*, align 4
  %g1 = bitcast i8** %g to i8*
  call void @llvm.va_start(i8* %g1)
  %0 = va_arg i8** %g, i64
  call void @llvm.va_end(i8* %g1)
  ret i64 %0
}








define double @test2(i32 %a, i32* %b, ...) nounwind optsize {
entry:
  %ap = alloca i8*, align 4                       
  %ap1 = bitcast i8** %ap to i8*                  
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32                       
  store i32 %0, i32* %b
  %1 = va_arg i8** %ap, double                    
  call void @llvm.va_end(i8* %ap1)
  ret double %1
}


declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind
