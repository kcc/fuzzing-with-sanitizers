

%va_list = type {i8*, i8*, i8*, i32, i32}

@var = global %va_list zeroinitializer, align 8

declare void @llvm.va_start(i8*)

define void @test_simple(i32 %n, ...) {































  %addr = bitcast %va_list* @var to i8*
  call void @llvm.va_start(i8* %addr)

  ret void
}

define void @test_fewargs(i32 %n, i32 %n1, i32 %n2, float %m, ...) {































  %addr = bitcast %va_list* @var to i8*
  call void @llvm.va_start(i8* %addr)

  ret void
}

define void @test_nospare([8 x i64], [8 x float], ...) {


  %addr = bitcast %va_list* @var to i8*
  call void @llvm.va_start(i8* %addr)





  ret void
}



define void @test_offsetstack([8 x i64], [2 x i64], [3 x float], ...) {






  %addr = bitcast %va_list* @var to i8*
  call void @llvm.va_start(i8* %addr)
  ret void
}

declare void @llvm.va_end(i8*)

define void @test_va_end() nounwind {



  %addr = bitcast %va_list* @var to i8*
  call void @llvm.va_end(i8* %addr)

  ret void

}

declare void @llvm.va_copy(i8* %dest, i8* %src)

@second_list = global %va_list zeroinitializer

define void @test_va_copy() {

  %srcaddr = bitcast %va_list* @var to i8*
  %dstaddr = bitcast %va_list* @second_list to i8*
  call void @llvm.va_copy(i8* %dstaddr, i8* %srcaddr)









  ret void

}
