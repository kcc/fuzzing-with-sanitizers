
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"
@xxx = global i32 0, align 4











@GlobSt = global [10 x i32] zeroinitializer, align 16  
@GlobDy = global [10 x i32] zeroinitializer, align 16  
@GlobEx = external global [10 x i32] , align 16        


define i32 @AccessGlobSt_0_2() sanitize_address {
entry:
    %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @GlobSt, i64 0, i64 2), align 8
    ret i32 %0



}


define i32 @AccessGlobSt_0_12() sanitize_address {
entry:
    %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @GlobSt, i64 0, i64 12), align 8
    ret i32 %0



}


define i32 @AccessGlobSt_1_2() sanitize_address {
entry:
    %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @GlobSt, i64 1, i64 2), align 8
    ret i32 %0



}


define i32 @AccessGlobDy_0_2() sanitize_address {
entry:
    %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @GlobDy, i64 0, i64 2), align 8
    ret i32 %0



}


define i32 @AccessGlobEx_0_2() sanitize_address {
entry:
    %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @GlobEx, i64 0, i64 2), align 8
    ret i32 %0



}


!llvm.asan.globals = !{!0}
!0 = !{[10 x i32]* @GlobDy, null, null, i1 true, i1 false}










