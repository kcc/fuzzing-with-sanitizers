

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"


define i8 @callee(i8 %a) {

  %ret = add i8 %a, 42

  ret i8 %ret
}


define void @caller(i8* %a) {

  %val = load i8, i8* %a
  %ret = tail call i8 @callee(i8 %val)

  store i8 %ret, i8* %a
  ret void
}

  
