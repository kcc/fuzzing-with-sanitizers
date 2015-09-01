





@asdf = internal constant [4 x i8] c"asdf"

declare void @puts(i8*)

define i32 @call_fast_thunk() {
  %r = call x86_fastcallcc i32 (...) @fast_thunk(i32 inreg 1, i32 inreg 2, i32 3)
  ret i32 %r
}

define x86_fastcallcc i32 @fast_thunk(...) {
  call void @puts(i8* getelementptr ([4 x i8], [4 x i8]* @asdf, i32 0, i32 0))
  %r = musttail call x86_fastcallcc i32 (...) bitcast (i32 (i32, i32, i32)* @fast_target to i32 (...)*) (...)
  ret i32 %r
}











define x86_fastcallcc i32 @fast_target(i32 inreg %a, i32 inreg %b, i32 %c) {
  %a0 = add i32 %a, %b
  %a1 = add i32 %a0, %c
  ret i32 %a1
}



define i32 @call_vector_thunk() {
  %r = call x86_vectorcallcc i32 (...) @vector_thunk(i32 inreg 1, i32 inreg 2, i32 3)
  ret i32 %r
}

define x86_vectorcallcc i32 @vector_thunk(...) {
  call void @puts(i8* getelementptr ([4 x i8], [4 x i8]* @asdf, i32 0, i32 0))
  %r = musttail call x86_vectorcallcc i32 (...) bitcast (i32 (i32, i32, i32)* @vector_target to i32 (...)*) (...)
  ret i32 %r
}























































define x86_vectorcallcc i32 @vector_target(i32 inreg %a, i32 inreg %b, i32 %c) {
  %a0 = add i32 %a, %b
  %a1 = add i32 %a0, %c
  ret i32 %a1
}
