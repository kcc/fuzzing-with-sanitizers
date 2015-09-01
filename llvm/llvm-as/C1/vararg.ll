

target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:16:32-n8:16"
target triple = "msp430---elf"

declare void @llvm.va_start(i8*) nounwind
declare void @llvm.va_end(i8*) nounwind
declare void @llvm.va_copy(i8*, i8*) nounwind

define void @va_start(i16 %a, ...) nounwind {
entry:


  %vl = alloca i8*, align 2
  %vl1 = bitcast i8** %vl to i8*



  call void @llvm.va_start(i8* %vl1)
  call void @llvm.va_end(i8* %vl1)
  ret void
}

define i16 @va_arg(i8* %vl) nounwind {
entry:

  %vl.addr = alloca i8*, align 2

  store i8* %vl, i8** %vl.addr, align 2



  %0 = va_arg i8** %vl.addr, i16

  ret i16 %0
}

define void @va_copy(i8* %vl) nounwind {
entry:

  %vl.addr = alloca i8*, align 2
  %vl2 = alloca i8*, align 2

  store i8* %vl, i8** %vl.addr, align 2
  %0 = bitcast i8** %vl2 to i8*
  %1 = bitcast i8** %vl.addr to i8*

  call void @llvm.va_copy(i8* %0, i8* %1)
  ret void
}
