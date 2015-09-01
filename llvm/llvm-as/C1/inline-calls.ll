




define internal fastcc i32 @func(i32 %a) {
entry:
  %tmp0 = add i32 %a, 1
  ret i32 %tmp0
}


define void @kernel(i32 addrspace(1)* %out) {
entry:
  %tmp0 = call i32 @func(i32 1)
  store i32 %tmp0, i32 addrspace(1)* %out
  ret void
}


define void @kernel2(i32 addrspace(1)* %out) {
entry:
  call void @kernel(i32 addrspace(1)* %out)
  ret void
}
