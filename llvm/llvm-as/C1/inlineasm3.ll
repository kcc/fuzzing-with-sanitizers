



%struct.int32x4_t = type { <4 x i32> }

define void @t() nounwind {
entry:



  %tmp = alloca %struct.int32x4_t, align 16
  call void asm sideeffect "vmov.I64 q15, #0\0Avmov.32 d30[0], $1\0Avmov ${0:q}, q15\0A", "=*w,r,~{d31},~{d30}"(%struct.int32x4_t* %tmp, i32 8192) nounwind
  ret void
}


%struct.int32x2_t = type { <4 x i32> }

define void @t2() nounwind {
entry:


  %asmtmp2 = tail call i32 asm sideeffect "vmov d30, $1\0Avmov.32 $0, d30[0]\0A", "=r,w,~{d30}"(<2 x i32> undef) nounwind
  ret void
}



%0 = type { <8 x i8>, <16 x i8>* }

define hidden void @conv4_8_E() nounwind {
entry:
%asmtmp31 = call %0 asm "vld1.u8  {$0}, [$1:128]!\0A", "=w,=r,1"(<16 x i8>* undef) nounwind
unreachable
}



define i32 @t3() nounwind {
entry:
tail call void asm sideeffect "flds s15, $0 \0A", "^Uv|m,~{s15}"(float 1.000000e+00) nounwind
ret i32 0
}



@k.2126 = internal unnamed_addr global float 1.000000e+00
define i32 @t4() nounwind {
entry:
call void asm sideeffect "flds s15, $0 \0A", "*^Uv,~{s15}"(float* @k.2126) nounwind
ret i32 0
}



define i32 @t5() nounwind {
entry:
call void asm sideeffect "flds s15, $0 \0A", "*^Uvm,~{s15}"(float* @k.2126) nounwind
ret i32 0
}



define float @t6(float %y) nounwind {
entry:


  %0 = tail call float asm "flds s15, $0", "=x"() nounwind
  ret float %0
}



define double @t7(double %y) nounwind {
entry:


  %0 = tail call double asm "flds s15, $0", "=x"() nounwind
  ret double %0
}



define float @t8(float %y) nounwind {
entry:


  %0 = tail call float asm "flds s15, $0", "=t"() nounwind
  ret float %0
}



define i32 @t9(i32 %r0) nounwind {
entry:


  %0 = tail call i32 asm "movw $0, $1", "=r,j"(i32 27182) nounwind
  ret i32 %0
}



define void @t10(i8* %f, i32 %g) nounwind {
entry:


  %f.addr = alloca i8*, align 4
  store i8* %f, i8** %f.addr, align 4
  call void asm "str $1, $0", "=*Q,r"(i8** %f.addr, i32 %g) nounwind
  ret void
}



define <4 x i32> @t11(i32* %p) nounwind {
entry:


  %0 = tail call <4 x i32> asm "vld1.s32 {${0:e}[], ${0:f}[]}, [$1]", "=w,r"(i32* %p) nounwind
  ret <4 x i32> %0
}
