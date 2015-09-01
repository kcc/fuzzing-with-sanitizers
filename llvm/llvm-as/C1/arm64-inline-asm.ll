



define i32 @t1() nounwind ssp {
entry:


  %0 = tail call i32 asm "mov ${0:w}, 7", "=r"() nounwind
  ret i32 %0
}

define i64 @t2() nounwind ssp {
entry:


  %0 = tail call i64 asm "mov $0, 7", "=r"() nounwind
  ret i64 %0
}

define i64 @t3() nounwind ssp {
entry:


  %0 = tail call i64 asm "mov ${0:w}, 7", "=r"() nounwind
  ret i64 %0
}



define void @t4(i64 %op) nounwind {
entry:


  %0 = tail call i64 asm sideeffect "mov x0, $1
  ret void
}



define float @t5(float %x) nounwind {
entry:


  %0 = tail call float asm "fadd ${0:s}, ${0:s}, ${0:s}", "=w,0"(float %x) nounwind
  ret float %0
}



define zeroext i8 @t6(i8* %src) nounwind {
entry:


  %0 = tail call i8 asm "ldtrb ${0:w}, [$1]", "=r,r"(i8* %src) nounwind
  ret i8 %0
}

define void @t7(i8* %f, i32 %g) nounwind {
entry:
  %f.addr = alloca i8*, align 8
  store i8* %f, i8** %f.addr, align 8
  
  
  call void asm "str ${1:w}, $0", "=*Q,r"(i8** %f.addr, i32 %g) nounwind
  ret void
}




define void @t8() nounwind ssp {
entry:


  tail call void asm sideeffect "nop", "~{v8}"() nounwind
  ret void
}

define i32 @constraint_I(i32 %i, i32 %j) nounwind {
entry:
  
  %0 = tail call i32 asm sideeffect "add ${0:w}, ${1:w}, $2", "=r,r,I"(i32 %i, i32 16773120) nounwind
  
  %1 = tail call i32 asm sideeffect "add ${0:w}, ${1:w}, $2", "=r,r,I"(i32 %i, i32 4096) nounwind
  
  ret i32 %1
}

define i32 @constraint_J(i32 %i, i32 %j, i64 %k) nounwind {
entry:
  
  %0 = tail call i32 asm sideeffect "sub ${0:w}, ${1:w}, $2", "=r,r,J"(i32 %i, i32 -16773120) nounwind
  
  %1 = tail call i32 asm sideeffect "sub ${0:w}, ${1:w}, $2", "=r,r,J"(i32 %i, i32 -1) nounwind
  
  %2 = tail call i64 asm sideeffect "sub ${0:x}, ${1:x}, $2", "=r,r,J"(i64 %k, i32 -1) nounwind
  
  %3 = tail call i64 asm sideeffect "sub ${0:x}, ${1:x}, $2", "=r,r,J"(i64 %k, i64 -1) nounwind
  
  ret i32 %1
}

define i32 @constraint_KL(i32 %i, i32 %j) nounwind {
entry:
  
  %0 = tail call i32 asm sideeffect "eor ${0:w}, ${1:w}, $2", "=r,r,K"(i32 %i, i32 255) nounwind
  
  %1 = tail call i32 asm sideeffect "eor ${0:w}, ${1:w}, $2", "=r,r,L"(i32 %i, i64 16711680) nounwind
  
  ret i32 %1
}

define i32 @constraint_MN(i32 %i, i32 %j) nounwind {
entry:
  
  %0 = tail call i32 asm sideeffect "movk ${0:w}, $1", "=r,M"(i32 65535) nounwind
  
  %1 = tail call i32 asm sideeffect "movz ${0:w}, $1", "=r,N"(i64 0) nounwind
  
  ret i32 %1
}

define void @t9() nounwind {
entry:
  
  %data = alloca <2 x double>, align 16
  %0 = load <2 x double>, <2 x double>* %data, align 16
  call void asm sideeffect "mov.2d v4, $0\0A", "w,~{v4}"(<2 x double> %0) nounwind
  
  ret void
}

define void @t10() nounwind {
entry:
  
  %data = alloca <2 x float>, align 8
  %a = alloca [2 x float], align 4
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %a, i32 0, i32 0
  %0 = load <2 x float>, <2 x float>* %data, align 8
  call void asm sideeffect "ldr ${1:q}, [$0]\0A", "r,w"(float* %arraydecay, <2 x float> %0) nounwind
  
  call void asm sideeffect "ldr ${1:d}, [$0]\0A", "r,w"(float* %arraydecay, <2 x float> %0) nounwind
  
  call void asm sideeffect "ldr ${1:s}, [$0]\0A", "r,w"(float* %arraydecay, <2 x float> %0) nounwind
  
  call void asm sideeffect "ldr ${1:h}, [$0]\0A", "r,w"(float* %arraydecay, <2 x float> %0) nounwind
  
  call void asm sideeffect "ldr ${1:b}, [$0]\0A", "r,w"(float* %arraydecay, <2 x float> %0) nounwind
  
  ret void
}

define void @t11() nounwind {
entry:
  
  %a = alloca i32, align 4
  %0 = load i32, i32* %a, align 4
  call void asm sideeffect "mov ${1:x}, ${0:x}\0A", "r,i"(i32 %0, i32 0) nounwind
  
  %1 = load i32, i32* %a, align 4
  call void asm sideeffect "mov ${1:w}, ${0:w}\0A", "r,i"(i32 %1, i32 0) nounwind
  
  ret void
}

define void @t12() nounwind {
entry:
  
  %data = alloca <4 x float>, align 16
  %0 = load <4 x float>, <4 x float>* %data, align 16
  call void asm sideeffect "mov.2d v4, $0\0A", "x,~{v4}"(<4 x float> %0) nounwind
  
  ret void
}

define void @t13() nounwind {
entry:
  
  tail call void asm sideeffect "mov x4, $0\0A", "N"(i64 1311673391471656960) nounwind
  
  tail call void asm sideeffect "mov x4, $0\0A", "N"(i64 -4662) nounwind
  
  tail call void asm sideeffect "mov x4, $0\0A", "N"(i64 4660) nounwind
  
  call void asm sideeffect "mov x4, $0\0A", "N"(i64 -71777214294589696) nounwind
  
  ret void
}

define void @t14() nounwind {
entry:
  
  tail call void asm sideeffect "mov w4, $0\0A", "M"(i32 305397760) nounwind
  
  tail call void asm sideeffect "mov w4, $0\0A", "M"(i32 -4662) nounwind
  
  tail call void asm sideeffect "mov w4, $0\0A", "M"(i32 4660) nounwind
  
  call void asm sideeffect "mov w4, $0\0A", "M"(i32 -16711936) nounwind
  
  ret void
}

define void @t15() nounwind {
entry:
  %0 = tail call double asm sideeffect "fmov $0, d8", "=r"() nounwind
  
  ret void
}



define void @test_zero_reg(i32* %addr) {


  tail call void asm sideeffect "USE($0)", "z"(i32 0) nounwind


  tail call void asm sideeffect "USE(${0:w})", "zr"(i32 0)


  tail call void asm sideeffect "USE(${0:w})", "zr"(i32 1)



  tail call void asm sideeffect "USE($0), USE($1)", "z,z"(i32 0, i32 0) nounwind


  tail call void asm sideeffect "USE($0), USE(${1:w})", "z,z"(i32 0, i32 0) nounwind


  ret void
}
