









define i32 @x(i32 %qscale) nounwind {
entry:
	%temp_block = alloca [64 x i16], align 16		
	%tmp = call i32 asm sideeffect "xor %edx, %edx", "={dx},~{dirflag},~{fpsr},~{flags}"() nounwind		
	br i1 undef, label %if.end78, label %if.then28

if.then28:		
	br label %if.end78

if.end78:		
	%level.1 = phi i32 [ %tmp, %if.then28 ], [ 0, %entry ]		
	%add.ptr1 = getelementptr [64 x i16], [64 x i16]* null, i32 0, i32 %qscale		
	%add.ptr2 = getelementptr [64 x i16], [64 x i16]* null, i32 1, i32 %qscale		
	%add.ptr3 = getelementptr [64 x i16], [64 x i16]* null, i32 2, i32 %qscale		
	%add.ptr4 = getelementptr [64 x i16], [64 x i16]* null, i32 3, i32 %qscale		
	%add.ptr5 = getelementptr [64 x i16], [64 x i16]* null, i32 4, i32 %qscale		
	%add.ptr6 = getelementptr [64 x i16], [64 x i16]* null, i32 5, i32 %qscale		
	%tmp1 = call i32 asm sideeffect "nop", "={ax},r,r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i16* %add.ptr6, i16* %add.ptr5, i16* %add.ptr4, i16* %add.ptr3, i16* %add.ptr2, i16* %add.ptr1) nounwind		
	ret i32 %level.1
}
