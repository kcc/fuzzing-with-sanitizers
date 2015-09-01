












define void @setcc_expand(i32 addrspace(1)* %out, i32 %in) {
entry:
  %0 = icmp eq i32 %in, 5
  br i1 %0, label %IF, label %ENDIF
IF:
  %1 = getelementptr i32, i32 addrspace(1)* %out, i32 1
  store i32 0, i32 addrspace(1)* %1
  br label %ENDIF

ENDIF:
  store i32 0, i32 addrspace(1)* %out
  ret void
}
