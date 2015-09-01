




define void @kernel_arg_i64(i64 addrspace(1)* %out, i64 %a) nounwind {
  store i64 %a, i64 addrspace(1)* %out, align 8
  ret void
}



define void @kernel_arg_v1i64(<1 x i64> addrspace(1)* %out, <1 x i64> %a) nounwind {
  store <1 x i64> %a, <1 x i64> addrspace(1)* %out, align 8
  ret void
}

