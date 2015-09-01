




declare void @foo(i32 *)


define void @f1(i64 %x) {






  %y = alloca i64, align 8
  store volatile i64 %x, i64* %y
  ret void
}






define void @f2(i64 %x) {






  %y = alloca [4073 x i64], align 8
  %ptr = getelementptr inbounds [4073 x i64], [4073 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}



define void @f3(i64 %x) {






  %y = alloca [4074 x i64], align 8
  %ptr = getelementptr inbounds [4074 x i64], [4074 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}



define void @f4(i64 %x) {






  %y = alloca [4075 x i64], align 8
  %ptr = getelementptr inbounds [4075 x i64], [4075 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}



define void @f5(i64 %x) {





  %y = alloca [268435433 x i64], align 8
  %ptr = getelementptr inbounds [268435433 x i64], [268435433 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}



define void @f6(i64 %x) {






  %y = alloca [268435434 x i64], align 8
  %ptr = getelementptr inbounds [268435434 x i64], [268435434 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}



define void @f7(i64 %x) {







  %y = alloca [268435435 x i64], align 8
  %ptr = getelementptr inbounds [268435435 x i64], [268435435 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %ptr
  ret void
}


define void @f8() {






  %ptr = alloca i32
  call void @foo(i32 *%ptr)
  call void @foo(i32 *%ptr)
  ret void
}
