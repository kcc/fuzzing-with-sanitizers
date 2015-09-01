









declare void @llvm.va_start(i8*) nounwind
declare void @llvm.va_end(i8*) nounwind


define i32 @va1(i32 %a, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32
  store i32 %0, i32* %b, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load i32, i32* %b, align 4
  ret i32 %tmp







}




define double @va2(i32 %a, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %b = alloca double, align 8
  store i32 %a, i32* %a.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, double
  store double %0, double* %b, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load double, double* %b, align 8
  ret double %tmp











}


define i32 @va3(double %a, ...) nounwind {
entry:
  %a.addr = alloca double, align 8
  %ap = alloca i8*, align 4
  %b = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32
  store i32 %0, i32* %b, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load i32, i32* %b, align 4
  ret i32 %tmp






}


define double @va4(double %a, ...) nounwind {
entry:
  %a.addr = alloca double, align 8
  %ap = alloca i8*, align 4
  %b = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, double
  store double %0, double* %b, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load double, double* %b, align 8
  ret double %tmp







}


define i32 @va5(i32 %a, i32 %b, i32 %c, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %d = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32
  store i32 %0, i32* %d, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load i32, i32* %d, align 4
  ret i32 %tmp





}


define double @va6(i32 %a, i32 %b, i32 %c, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %d = alloca double, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, double
  store double %0, double* %d, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load double, double* %d, align 8
  ret double %tmp









}


define i32 @va7(i32 %a, double %b, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca double, align 8
  %ap = alloca i8*, align 4
  %c = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store double %b, double* %b.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32
  store i32 %0, i32* %c, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load i32, i32* %c, align 4
  ret i32 %tmp




}


define double @va8(i32 %a, double %b, ...) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca double, align 8
  %ap = alloca i8*, align 4
  %c = alloca double, align 8
  store i32 %a, i32* %a.addr, align 4
  store double %b, double* %b.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, double
  store double %0, double* %c, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load double, double* %c, align 8
  ret double %tmp





}


define i32 @va9(double %a, double %b, i32 %c, ...) nounwind {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %d = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, i32
  store i32 %0, i32* %d, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load i32, i32* %d, align 4
  ret i32 %tmp




}


define double @va10(double %a, double %b, i32 %c, ...) nounwind {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca i32, align 4
  %ap = alloca i8*, align 4
  %d = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = va_arg i8** %ap, double
  store double %0, double* %d, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %tmp = load double, double* %d, align 8
  ret double %tmp








}
