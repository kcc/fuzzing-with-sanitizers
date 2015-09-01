







define void @select_i1(i1 addrspace(1)* %out, i32 %cond, i1 %a, i1 %b) nounwind {
  %cmp = icmp ugt i32 %cond, 5
  %sel = select i1 %cmp, i1 %a, i1 %b
  store i1 %sel, i1 addrspace(1)* %out, align 4
  ret void
}

