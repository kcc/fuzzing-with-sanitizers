











define i32 @_Z3fooi(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  br label %while.cond

while.cond:                                       
  %0 = load i32, i32* %x.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %x.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       
  br label %while.cond

while.end:                                        
  ret i32 0
}

attributes #0 = { optnone noinline }





















