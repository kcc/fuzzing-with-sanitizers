


define i64 @t(i64* %arg) nounwind {
        br i1 true, label %1, label %5


        %2 = icmp eq i64* null, %arg            
        %3 = tail call i64* asm sideeffect "movl %fs:0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() nounwind         


        br i1 %2, label %4, label %5


        ret i64 1


        ret i64 0
}




define i32 @s(i32 %argc, i8** nocapture %argv) unnamed_addr nounwind {
entry:
  %0 = trunc i32 %argc to i16
  %asmtmp = tail call i16 asm "rorw $$8, ${0:w}", "=r,0,~{fpsr},~{flags},~{cc}"(i16 %0) nounwind, !srcloc !0
  %1 = zext i16 %asmtmp to i32
  ret i32 %1
}

!0 = !{i64 935930}
