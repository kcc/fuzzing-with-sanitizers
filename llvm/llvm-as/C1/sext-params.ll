

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"


define i8 @foo(i8 signext %a) {

  %ret = add i8 %a, 3
  ret i8 %ret
}

define i8 @bar(i8 zeroext %a) {

  %ret = add i8 %a, 3
  ret i8 %ret
}
