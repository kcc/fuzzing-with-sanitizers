











define void @lds_crash(i32 addrspace(1)* %out, i32 addrspace(3)* %in, i32 %a, i32 %b, i32 %c) {
entry:
  %0 = load i32, i32 addrspace(3)* %in
  
  
  %div0 = udiv i32 %0, %b
  %div1 = udiv i32 %div0, %a
  %div2 = udiv i32 %div1, 11
  %div3 = udiv i32 %div2, %a
  %div4 = udiv i32 %div3, %b
  %div5 = udiv i32 %div4, %c
  %div6 = udiv i32 %div5, %div0
  %div7 = udiv i32 %div6, %div1
  store i32 %div7, i32 addrspace(1)* %out
  ret void
}
