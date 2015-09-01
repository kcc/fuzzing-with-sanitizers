











define void @break_inserted_outside_of_loop(i32 addrspace(1)* %out, i32 %a, i32 %b) {
main_body:
  %0 = and i32 %a, %b
  %1 = trunc i32 %0 to i1
  br label %ENDIF

ENDLOOP:
  store i32 0, i32 addrspace(1)* %out
  ret void

ENDIF:
  br i1 %1, label %ENDLOOP, label %ENDIF
}
















define void @phi_cond_outside_loop(i32 %a, i32 %b) {
entry:
  %0 = icmp eq i32 %a , 0
  br i1 %0, label %if, label %else

if:
  br label %endif

else:
  %1 = icmp eq i32 %b, 0
  br label %endif

endif:
  %2 = phi i1 [0, %if], [%1, %else]
  br label %loop

loop:
  br i1 %2, label %exit, label %loop

exit:
  ret void
}
