

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private constant [23 x i8] c"This should be -1: %d\0A\00" 

define i32 @main() {
entry:
  %retval = alloca i32, align 4                   
  %v = alloca i32, align 4                        
  store i32 0, i32* %retval
  %zero = load i32, i32* %retval




  %0 = call i32 asm "bsr   $1, $0\0A\09cmovz $2, $0", "=&r,ro,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %zero, i32 -1) nounwind, !srcloc !0 
  store i32 %0, i32* %v
  %tmp = load i32, i32* %v                             
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %tmp) 
  store i32 0, i32* %retval
  %1 = load i32, i32* %retval                          
  ret i32 %0
}

declare i32 @printf(i8*, ...)

!0 = !{i32 191}
