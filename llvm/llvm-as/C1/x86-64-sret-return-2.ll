







define void @foo(i32* sret %agg.result, i32, i32, i32, i32, i32, void (i32)* %pred) {
entry:
  call void %pred(i32 undef)
  ret void





}
