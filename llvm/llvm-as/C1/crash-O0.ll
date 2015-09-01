
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64-n32"
target triple = "armv6-apple-darwin10"

%struct0 = type { i32, i32 }


define arm_apcscc void @clobber_cc() nounwind noinline ssp {
entry:
  %asmtmp = call %struct0 asm sideeffect "...", "=&r,=&r,r,Ir,r,~{cc},~{memory}"(i32* undef, i32 undef, i32 1) nounwind 
  unreachable
}

@.str523 = private constant [256 x i8] c"<Unknown>\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4 
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind



define arm_apcscc void @scavence_ADDri() nounwind {
entry:
  %letter = alloca i8                             
  %prodvers = alloca [256 x i8]                   
  %buildver = alloca [256 x i8]                   
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* undef, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str523, i32 0, i32 0), i32 256, i32 1, i1 false)
  %prodvers2 = bitcast [256 x i8]* %prodvers to i8* 
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %prodvers2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str523, i32 0, i32 0), i32 256, i32 1, i1 false)
  unreachable
}
