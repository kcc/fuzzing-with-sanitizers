






define i32 @f1(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp eq i32 %add, 0
  %c = load i32 , i32 *%cptr
  %arg = select i1 %cmp, i32 %c, i32 %b
  call void asm sideeffect "blah $0", "{r3}"(i32 %arg)
  ret i32 %add
}


define i32 @f2(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp eq i32 %add, 0
  %c = load i32 , i32 *%cptr
  %newval = select i1 %cmp, i32 %b, i32 %c
  store i32 %newval, i32 *%cptr
  ret i32 %add
}


define i32 @f3(i32 %a, i32 %b, i32 %c) {




  %add = add i32 %a, 1000000
  %cmp = icmp eq i32 %add, 0
  %arg = select i1 %cmp, i32 %b, i32 %c
  call void asm sideeffect "blah $0", "{r3}"(i32 %arg)
  ret i32 %add
}


define i32 @f4(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp eq i32 %add, 0
  %c = load i32 , i32 *%cptr
  %arg = select i1 %cmp, i32 %b, i32 %c
  call void asm sideeffect "blah $0", "{r3}"(i32 %arg)
  ret i32 %add
}


define i32 @f5(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp eq i32 %add, 0
  %c = load i32 , i32 *%cptr
  %newval = select i1 %cmp, i32 %c, i32 %b
  store i32 %newval, i32 *%cptr
  ret i32 %add
}


define i32 @f6(i32 %a, i32 %b, i32 %c) {




  %add = add i32 %a, 1000000
  %cmp = icmp ne i32 %add, 0
  %arg = select i1 %cmp, i32 %b, i32 %c
  call void asm sideeffect "blah $0", "{r3}"(i32 %arg)
  ret i32 %add
}


define i32 @f7(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp ne i32 %add, 0
  %c = load i32 , i32 *%cptr
  %arg = select i1 %cmp, i32 %b, i32 %c
  call void asm sideeffect "blah $0", "{r3}"(i32 %arg)
  ret i32 %add
}


define i32 @f8(i32 %a, i32 %b, i32 *%cptr) {




  %add = add i32 %a, 1000000
  %cmp = icmp ne i32 %add, 0
  %c = load i32 , i32 *%cptr
  %newval = select i1 %cmp, i32 %c, i32 %b
  store i32 %newval, i32 *%cptr
  ret i32 %add
}
