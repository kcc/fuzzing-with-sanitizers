

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.0"

@msg = internal global i8* null                   
@.str = private constant [2 x i8] c"x\00", align 1 

define void @test(i8* %p) "no-frame-pointer-elim-non-leaf" nounwind optsize ssp {







entry:
  %0 = icmp eq i8* %p, null                       
  br i1 %0, label %return, label %bb

bb:                                               
  tail call void asm "mov $1, $0", "=*m,{cx},~{dirflag},~{fpsr},~{flags}"(i8** @msg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) nounwind
  tail call void @llvm.trap()
  unreachable

return:                                           
  ret void
}

declare void @llvm.trap() nounwind
