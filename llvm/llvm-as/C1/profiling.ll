

target triple = "x86_64-apple-macosx10.10.0"

@__llvm_profile_name_foo = hidden constant [3 x i8] c"foo"

@__llvm_profile_name_bar = hidden constant [4 x i8] c"bar\00"

@baz_prof_name = hidden constant [3 x i8] c"baz"




define void @foo() {
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__llvm_profile_name_foo, i32 0, i32 0), i64 0, i32 1, i32 0)
  ret void
}



define void @bar() {
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @__llvm_profile_name_bar, i32 0, i32 0), i64 0, i32 1, i32 0)
  ret void
}



define void @baz() {
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @baz_prof_name, i32 0, i32 0), i64 0, i32 3, i32 0)
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @baz_prof_name, i32 0, i32 0), i64 0, i32 3, i32 1)
  call void @llvm.instrprof.increment(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @baz_prof_name, i32 0, i32 0), i64 0, i32 3, i32 2)
  ret void
}

declare void @llvm.instrprof.increment(i8*, i64, i32, i32)



