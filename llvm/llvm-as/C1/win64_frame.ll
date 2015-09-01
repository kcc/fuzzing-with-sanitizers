

define i32 @f1(i32 %p1, i32 %p2, i32 %p3, i32 %p4, i32 %p5) "no-frame-pointer-elim"="true" {
  
  
  ret i32 %p5
}

define void @f2(i32 %p, ...) "no-frame-pointer-elim"="true" {
  
  
  
  
  
  
  %ap = alloca i8, align 8
  call void @llvm.va_start(i8* %ap)
  ret void
}

define i8* @f3() "no-frame-pointer-elim"="true" {
  
  
  
  
  %ra = call i8* @llvm.returnaddress(i32 0)
  ret i8* %ra
}

define i8* @f4() "no-frame-pointer-elim"="true" {
  
  
  
  
  
  
  
  
  
  alloca [300 x i8]
  %ra = call i8* @llvm.returnaddress(i32 0)
  ret i8* %ra
}

declare void @external(i8*)

define void @f5() "no-frame-pointer-elim"="true" {
  
  
  
  
  
  
  
  %a = alloca [300 x i8]
  %gep = getelementptr [300 x i8], [300 x i8]* %a, i32 0, i32 0
  call void @external(i8* %gep)
  ret void
}

define void @f6(i32 %p, ...) "no-frame-pointer-elim"="true" {
  
  
  
  
  
  
  
  %a = alloca [300 x i8]
  %gep = getelementptr [300 x i8], [300 x i8]* %a, i32 0, i32 0
  call void @external(i8* %gep)
  ret void
}

define i32 @f7(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) "no-frame-pointer-elim"="true" {
  
  
  
  
  
  
  
  
  
  
  alloca [300 x i8], align 64
  ret i32 %e
}

define i32 @f8(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) "no-frame-pointer-elim"="true" {
  
  
  
  
  

  %alloca = alloca [300 x i8], align 64
  
  

  alloca i32, i32 %a
  
  
  
  
  
  

  %gep = getelementptr [300 x i8], [300 x i8]* %alloca, i32 0, i32 0
  call void @external(i8* %gep)
  
  
  
  

  ret i32 %e
  
  
}

declare i8* @llvm.returnaddress(i32) nounwind readnone

declare void @llvm.va_start(i8*) nounwind
