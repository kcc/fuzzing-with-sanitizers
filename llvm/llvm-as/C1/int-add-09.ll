





define void @f1(i128 *%aptr) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 128
  %add = add i128 %xor, 1
  store i128 %add, i128 *%aptr
  ret void
}


define void @f2(i128 *%aptr) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 128
  %add = add i128 %xor, 4294967295
  store i128 %add, i128 *%aptr
  ret void
}


define void @f3(i128 *%aptr) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 128
  %add = add i128 %xor, 4294967296
  store i128 %add, i128 *%aptr
  ret void
}


define void @f4(i128 *%aptr) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 128
  %add = add i128 %xor, -1
  store i128 %add, i128 *%aptr
  ret void
}
