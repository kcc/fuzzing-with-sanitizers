





$_Z3barIvEvv = comdat any

@__llvm_profile_name__Z3barIvEvv = linkonce_odr hidden constant [11 x i8] c"_Z3barIvEvv", align 1





declare void @llvm.instrprof.increment(i8*, i64, i32, i32) #1

define linkonce_odr void @_Z3barIvEvv() comdat {
entry:
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__llvm_profile_name__Z3barIvEvv, i32 0, i32 0), i64 0, i32 1, i32 0)
  ret void
}
