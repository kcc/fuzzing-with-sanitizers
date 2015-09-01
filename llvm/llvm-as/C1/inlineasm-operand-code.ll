




%union.u_tag = type { i64 }
%struct.anon = type { i32, i32 }
@uval = common global %union.u_tag zeroinitializer, align 8


define i32 @constraint_X() nounwind {
entry:




  tail call i32 asm sideeffect "addiu $0,$1,${2:X}", "=r,r,I"(i32 7, i32 -3) 
  ret i32 0
}


define i32 @constraint_x() nounwind {
entry:




  tail call i32 asm sideeffect "addiu $0,$1,${2:x}", "=r,r,I"(i32 7, i32 -3) 
  ret i32 0
}


define i32 @constraint_d() nounwind {
entry:




  tail call i32 asm sideeffect "addiu $0,$1,${2:d}", "=r,r,I"(i32 7, i32 -3) 
  ret i32 0
}


define i32 @constraint_m() nounwind {
entry:




  tail call i32 asm sideeffect "addiu $0,$1,${2:m}", "=r,r,I"(i32 7, i32 -3) 
  ret i32 0
}


define i32 @constraint_z() nounwind {
entry:




  tail call i32 asm sideeffect "addiu $0,$1,${2:z}", "=r,r,I"(i32 7, i32 -3) 





  tail call i32 asm sideeffect "addiu $0,$1,${2:z}", "=r,r,I"(i32 7, i32 0) nounwind





  call void asm sideeffect "mtc0 ${0:z}, $$12", "Jr"(i32 7) nounwind





  call void asm sideeffect "mtc0 ${0:z}, $$12", "Jr"(i32 0) nounwind





  call void asm sideeffect "mtc0 ${0:z}, $$12", "r"(i32 7) nounwind








  call void asm sideeffect "mtc0 ${0:z}, $$12", "r"(i32 0) nounwind
  ret i32 0
}


define i32 @constraint_longlong() nounwind {
entry:




  tail call i64 asm sideeffect "addiu $0,$1,$2 \0A\09", "=r,r,X"(i64 1229801703532086340, i64 3) nounwind
  ret i32 0
}


define i32 @constraint_D() nounwind {
entry:
















  %bosco = load i64, i64* getelementptr inbounds (%union.u_tag, %union.u_tag* @uval, i32 0, i32 0), align 8
  %trunc1 = trunc i64 %bosco to i32
  tail call i32 asm sideeffect "or $0,${1:D},$2", "=r,r,r"(i64 %bosco, i32 %trunc1) nounwind
  ret i32 0
}


define i32 @constraint_L() nounwind {
entry:















  %bosco = load i64, i64* getelementptr inbounds (%union.u_tag, %union.u_tag* @uval, i32 0, i32 0), align 8
  %trunc1 = trunc i64 %bosco to i32
  tail call i32 asm sideeffect "or $0,${1:L},$2", "=r,r,r"(i64 %bosco, i32 %trunc1) nounwind
  ret i32 0
}


define i32 @constraint_M() nounwind {
entry:















  %bosco = load i64, i64* getelementptr inbounds (%union.u_tag, %union.u_tag* @uval, i32 0, i32 0), align 8
  %trunc1 = trunc i64 %bosco to i32
  tail call i32 asm sideeffect "or $0,${1:M},$2", "=r,r,r"(i64 %bosco, i32 %trunc1) nounwind
  ret i32 0
}
