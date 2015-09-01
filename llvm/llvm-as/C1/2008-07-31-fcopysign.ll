







target datalayout = "e-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "mipsallegrexel-unknown-psp-elf"

define float @A(float %i, float %j) nounwind  {
entry:
	tail call float @copysignf( float %i, float %j ) nounwind readnone 		
	ret float %0
}

declare float @copysignf(float, float) nounwind readnone 
