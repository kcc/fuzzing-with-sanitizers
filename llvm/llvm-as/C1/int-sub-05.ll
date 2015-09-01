




declare i128 *@foo()


define void @f1(i128 *%ptr, i64 %high, i64 %low) {




  %a = load i128 , i128 *%ptr
  %highx = zext i64 %high to i128
  %lowx = zext i64 %low to i128
  %bhigh = shl i128 %highx, 64
  %b = or i128 %bhigh, %lowx
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%ptr
  ret void
}


define void @f2(i64 %addr) {




  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
  ret void
}


define void @f3(i64 %base) {




  %addr = add i64 %base, 524272
  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
  ret void
}


define void @f4(i64 %base) {






  %addr = add i64 %base, 524280
  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
  ret void
}




define void @f5(i64 %base) {




  %addr = add i64 %base, 524288
  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
  ret void
}


define void @f6(i64 %base) {




  %addr = add i64 %base, -524288
  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
  ret void
}


define void @f7(i64 %base) {




  %addr = add i64 %base, -524296
  %bptr = inttoptr i64 %addr to i128 *
  %aptr = getelementptr i128, i128 *%bptr, i64 -8
  %a = load i128 , i128 *%aptr
  %b = load i128 , i128 *%bptr
  %sub = sub i128 %a, %b
  store i128 %sub, i128 *%aptr
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
  %sub0 = sub i128 %ret, %val0
  %sub1 = sub i128 %sub0, %val1
  %sub2 = sub i128 %sub1, %val2
  %sub3 = sub i128 %sub2, %val3
  %sub4 = sub i128 %sub3, %val4
  store i128 %sub4, i128 *%retptr

  ret void
}
