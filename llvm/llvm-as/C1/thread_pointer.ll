


define i8* @test() {
entry:
	%tmp1 = call i8* @llvm.arm.thread.pointer( )		
	ret i8* %tmp1
}

declare i8* @llvm.arm.thread.pointer()
