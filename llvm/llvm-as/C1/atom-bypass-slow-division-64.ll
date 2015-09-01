

target triple = "x86_64-unknown-linux-gnu"



define i64 @Test_get_quotient(i64 %a, i64 %b) nounwind {









  %result = sdiv i64 %a, %b
  ret i64 %result
}

define i64 @Test_get_remainder(i64 %a, i64 %b) nounwind {









  %result = srem i64 %a, %b
  ret i64 %result
}

define i64 @Test_get_quotient_and_remainder(i64 %a, i64 %b) nounwind {











  %resultdiv = sdiv i64 %a, %b
  %resultrem = srem i64 %a, %b
  %result = add i64 %resultdiv, %resultrem
  ret i64 %result
}
