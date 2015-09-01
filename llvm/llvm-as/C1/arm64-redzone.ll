

define i32 @foo(i32 %a, i32 %b) nounwind ssp {



  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %tmp = load i32, i32* %a.addr, align 4
  %tmp1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %tmp, %tmp1
  store i32 %add, i32* %x, align 4
  %tmp2 = load i32, i32* %x, align 4
  ret i32 %tmp2
}
