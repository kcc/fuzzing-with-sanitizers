


define void @i64_write(i64* %p, i64 %val) nounwind {



  %1 = tail call i64 asm sideeffect "1: ldrexd $0, ${0:H}, [$2]\0A strexd $0, $3, ${3:H}, [$2]\0A teq $0, #0\0A bne 1b", "=&r,=*Qo,r,r,~{cc}"(i64* %p, i64* %p, i64 %val) nounwind
  ret void
}


define void @multi_writes(i64* %p, i64 %val1, i64 %val2, i64 %val3, i64 %val4, i64 %val5, i64 %val6) nounwind {
entry:






















  tail call void asm sideeffect " strexd $1, ${1:H}, [$0]\0A strexd $2, ${2:H}, [$0]\0A strexd $3, ${3:H}, [$0]\0A strexd $4, ${4:H}, [$0]\0A strexd $5, ${5:H}, [$0]\0A strexd $6, ${6:H}, [$0]\0A", "r,r,r,r,r,r,r"(i64* %p, i64 %val1, i64 %val2, i64 %val3, i64 %val4, i64 %val5, i64 %val6) nounwind
  %incdec.ptr = getelementptr inbounds i64, i64* %p, i32 1
  tail call void asm sideeffect " strexd $1, ${1:H}, [$0]\0A strexd $2, ${2:H}, [$0]\0A strexd $3, ${3:H}, [$0]\0A strexd $4, ${4:H}, [$0]\0A strexd $5, ${5:H}, [$0]\0A strexd $6, ${6:H}, [$0]\0A", "r,r,r,r,r,r,r"(i64* %incdec.ptr, i64 %val1, i64 %val2, i64 %val3, i64 %val4, i64 %val5, i64 %val6) nounwind
  tail call void asm sideeffect " strexd $1, ${1:H}, [$0]\0A strexd $2, ${2:H}, [$0]\0A strexd $3, ${3:H}, [$0]\0A strexd $4, ${4:H}, [$0]\0A strexd $5, ${5:H}, [$0]\0A strexd $6, ${6:H}, [$0]\0A", "r,r,r,r,r,r,r"(i64* %incdec.ptr, i64 %val1, i64 %val2, i64 %val3, i64 %val4, i64 %val5, i64 %val6) nounwind
  ret void
}



define void @foo(i64* %p, i64 %i) nounwind {





  %1 = tail call { i64, i64 } asm sideeffect "@ atomic64_set\0A1: ldrexd $0, ${0:H}, [$3]\0Aldrexd $1, ${1:H}, [$3]\0A strexd $0, $4, ${4:H}, [$3]\0A teq $0, #0\0A bne 1b", "=&r,=&r,=*Qo,r,r,~{cc}"(i64* %p, i64* %p, i64 %i) nounwind
  ret void
}


define i64 @ldrd_test(i64* %p) nounwind {

  %1 = tail call i64 asm "ldrd $0, ${0:H}, [$1]", "=r,r"(i64* %p) nounwind
  ret i64 %1
}

define i64 @QR_test(i64* %p) nounwind {


  %1 = tail call i64 asm "ldrd ${0:Q}, ${0:R}, [$1]", "=r,r"(i64* %p) nounwind
  ret i64 %1
}

define i64 @defuse_test(i64 %p) nounwind {


  %1 = tail call i64 asm "add $0, ${0:H}, #1", "=r,0"(i64 %p) nounwind
  ret i64 %1
}


define void @strd_test(i64* %p, i32 %lo, i32 %hi) nounwind {


  %1 = zext i32 %hi to i64
  %2 = shl nuw i64 %1, 32
  %3 = sext i32 %lo to i64
  %4 = or i64 %2, %3
  tail call void asm sideeffect "strd $0, ${0:H}, [$1]", "r,r"(i64 %4, i64* %p) nounwind
  ret void
}


define i64 @tied_64bit_test(i64 %in) nounwind {


  %addr = alloca i64
  call void asm "OUT($0), IN($1)", "=*rm,0"(i64* %addr, i64 %in)
  ret i64 %in
}



define i64 @tied_64bit_lookback_test(i64 %in) nounwind {


  %vars = call {i64, i32, i64} asm "OUTLO(${2:Q}) OUTHI(${2:R}) INLO(${3:Q}) INHI(${3:R})", "=r,=r,=r,2"(i64 %in)
  %res = extractvalue {i64, i32, i64} %vars, 2
  ret i64 %res
}
