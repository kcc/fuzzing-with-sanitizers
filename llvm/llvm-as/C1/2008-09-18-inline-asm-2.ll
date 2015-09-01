



























target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin8"
	%struct.foo = type { i32, i32, i8* }

define i32 @get(%struct.foo* %c, i8* %state) nounwind {
entry:
	%0 = getelementptr %struct.foo, %struct.foo* %c, i32 0, i32 0		
	%1 = getelementptr %struct.foo, %struct.foo* %c, i32 0, i32 1		
	%2 = getelementptr %struct.foo, %struct.foo* %c, i32 0, i32 2		
	%3 = load i32, i32* %0, align 4		
	%4 = load i32, i32* %1, align 4		
	%5 = load i8, i8* %state, align 1		
	%asmtmp = tail call { i32, i32, i32, i32 } asm sideeffect "#1st=$0 $1 2nd=$1 $2 3rd=$2 $4 5th=$4 $3=4th 1$0 1%eXx 5$4 5%eXx 6th=$5", "=&r,=r,=r,=*m,=&q,=*imr,1,2,*m,5,~{dirflag},~{fpsr},~{flags},~{cx}"(i8** %2, i8* %state, i32 %3, i32 %4, i8** %2, i8 %5) nounwind		
	%asmresult = extractvalue { i32, i32, i32, i32 } %asmtmp, 0		
	%asmresult1 = extractvalue { i32, i32, i32, i32 } %asmtmp, 1		
	store i32 %asmresult1, i32* %0
	%asmresult2 = extractvalue { i32, i32, i32, i32 } %asmtmp, 2		
	store i32 %asmresult2, i32* %1
	ret i32 %asmresult
}
