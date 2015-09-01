
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i64 @foo(i64 %x) #0 {
entry:

  %a = lshr i64 %x, 35
  %b = and i64 %a, 65535

  ret i64 %b

}

attributes #0 = { nounwind }

