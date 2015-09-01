








@"\01LC" = internal constant [7 x i8] c"n0=%d\0A\00"		
@llvm.used = appending global [1 x i8*] [ i8* bitcast (i32 (i64, i64)* @umoddi3 to i8*) ], section "llvm.metadata"		

define i32 @umoddi3(i64 %u, i64 %v) nounwind noinline {
entry:
	%0 = trunc i64 %v to i32		
	%1 = trunc i64 %u to i32		
	%2 = lshr i64 %u, 32		
	%3 = trunc i64 %2 to i32		
	%4 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([7 x i8], [7 x i8]* @"\01LC", i32 0, i32 0), i32 %1) nounwind		
	%5 = icmp ult i32 %1, %0		
	br i1 %5, label %bb2, label %bb

bb:		
	%6 = lshr i64 %v, 32		
	%7 = trunc i64 %6 to i32		
	%asmtmp = tail call { i32, i32 } asm "subl $5,$1\0A\09sbbl $3,$0", "=r,=&r,0,imr,1,imr,~{dirflag},~{fpsr},~{flags}"(i32 %3, i32 %7, i32 %1, i32 %0) nounwind		
	%asmresult = extractvalue { i32, i32 } %asmtmp, 0		
	%asmresult1 = extractvalue { i32, i32 } %asmtmp, 1		
	br label %bb2

bb2:		
	%n1.0 = phi i32 [ %asmresult, %bb ], [ %3, %entry ]		
	%n0.0 = phi i32 [ %asmresult1, %bb ], [ %1, %entry ]		
	%8 = add i32 %n0.0, %n1.0		
	ret i32 %8
}

declare i32 @printf(i8*, ...) nounwind
