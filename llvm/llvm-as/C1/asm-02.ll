





define void @f1(i64 %base) {



  %addr = inttoptr i64 %base to i64 *
  call void asm "blah $0", "=*R" (i64 *%addr)
  ret void
}


define void @f2(i64 %base) {




  %add = add i64 %base, -1
  %addr = inttoptr i64 %add to i64 *
  call void asm "blah $0", "=*R" (i64 *%addr)
  ret void
}


define void @f3(i64 %base) {



  %add = add i64 %base, 4095
  %addr = inttoptr i64 %add to i64 *
  call void asm "blah $0", "=*R" (i64 *%addr)
  ret void
}


define void @f4(i64 %base) {




  %add = add i64 %base, 4096
  %addr = inttoptr i64 %add to i64 *
  call void asm "blah $0", "=*R" (i64 *%addr)
  ret void
}



