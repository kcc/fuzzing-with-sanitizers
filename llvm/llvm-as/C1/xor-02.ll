




define i32 @f1(i32 %a) {



  %xor = xor i32 %a, 1
  ret i32 %xor
}


define i32 @f2(i32 %a) {



  %xor = xor i32 %a, 2147483647
  ret i32 %xor
}



define i32 @f3(i32 %a) {



  %xor = xor i32 %a, -2147483648
  ret i32 %xor
}


define i32 @f4(i32 %a) {



  %xor = xor i32 %a, 4294967295
  ret i32 %xor
}
