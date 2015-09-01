
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.0"

define void @cpuid(i32* %data) nounwind {
entry:
	%arrayidx = getelementptr i32, i32* %data, i32 1		
	%arrayidx2 = getelementptr i32, i32* %data, i32 2		
	%arrayidx4 = getelementptr i32, i32* %data, i32 3		
	%arrayidx6 = getelementptr i32, i32* %data, i32 4		
	%arrayidx8 = getelementptr i32, i32* %data, i32 5		
	%tmp9 = load i32, i32* %arrayidx8		
	%arrayidx11 = getelementptr i32, i32* %data, i32 6		
	%tmp12 = load i32, i32* %arrayidx11		
	%arrayidx14 = getelementptr i32, i32* %data, i32 7		
	%tmp15 = load i32, i32* %arrayidx14		
	%arrayidx17 = getelementptr i32, i32* %data, i32 8		
	%tmp18 = load i32, i32* %arrayidx17		
	%0 = call i32 asm "cpuid", "={ax},=*{bx},=*{cx},=*{dx},{ax},{bx},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i32* %arrayidx2, i32* %arrayidx4, i32* %arrayidx6, i32 %tmp9, i32 %tmp12, i32 %tmp15, i32 %tmp18) nounwind		
	store i32 %0, i32* %arrayidx
	ret void
}
