
















define void @variable_alloca_with_adj_call_stack(i32 %num) {
entry:
  %0 = alloca i8, i32 %num, align 8
  call void @foo(i8* %0, i8* %0, i8* %0, i8* %0, i8* %0, i8* %0, i8* %0, i8* %0, i8* %0, i8* %0)
  ret void
}


declare void @foo(i8* , i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)
