




declare i128 *@foo()


define void @f1(i128 *%ptr) {




  %value = load i128 , i128 *%ptr
  %add = add i128 %value, %value
  store i128 %add, i128 *%ptr
  ret void
}



define void @f2(i128 *%aptr, i64 %addr) {




  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}


define void @f3(i128 *%aptr, i64 %base) {




  %addr = add i64 %base, 524272
  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}


define void @f4(i128 *%aptr, i64 %base) {






  %addr = add i64 %base, 524280
  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}




define void @f5(i128 *%aptr, i64 %base) {




  %addr = add i64 %base, 524288
  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}


define void @f6(i128 *%aptr, i64 %base) {




  %addr = add i64 %base, -524288
  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}


define void @f7(i128 *%aptr, i64 %base) {




  %addr = add i64 %base, -524296
  %bptr = inttoptr i64 %addr to i128 *
  %a = load volatile i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %add = add i128 %a, %b
  store i128 %add, i128 *%aptr
  ret void
}



define void @f8(i128 *%ptr0) {





  %ptr1 = getelementptr i128, i128 *%ptr0, i128 2
  %ptr2 = getelementptr i128, i128 *%ptr0, i128 4
  %ptr3 = getelementptr i128, i128 *%ptr0, i128 6
  %ptr4 = getelementptr i128, i128 *%ptr0, i128 8

  %val0 = load i128 , i128 *%ptr0
  %val1 = load i128 , i128 *%ptr1
  %val2 = load i128 , i128 *%ptr2
  %val3 = load i128 , i128 *%ptr3
  %val4 = load i128 , i128 *%ptr4

  %retptr = call i128 *@foo()

  %ret = load i128 , i128 *%retptr
  %add0 = add i128 %ret, %val0
  %add1 = add i128 %add0, %val1
  %add2 = add i128 %add1, %val2
  %add3 = add i128 %add2, %val3
  %add4 = add i128 %add3, %val4
  store i128 %add4, i128 *%retptr

  ret void
}
