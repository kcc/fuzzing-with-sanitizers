

declare i32 @external_func(i64 %arg)

define i32 @invoke_test(i64 %arg) personality i8* null {
entry:
  %result = invoke fastcc i32 @external_func(i64 inreg %arg)
      to label %cont unwind label %lpad
cont:
  ret i32 %result
lpad:
  %phi = phi i32 [ 99, %entry ]
  %lp = landingpad { i8*, i32 } cleanup
  ret i32 %phi
}










