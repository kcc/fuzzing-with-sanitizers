

declare i8* @llvm.stacksave()
declare void @llvm.stackrestore(i8*)


define i32* @test1(i32 %P) {
	%tmp = call i8* @llvm.stacksave( )
	call void @llvm.stackrestore( i8* %tmp ) 
	%A = alloca i32, i32 %P		
	ret i32* %A
}

define void @test2(i8* %X) {
	call void @llvm.stackrestore( i8* %X )  
	ret void
}

define void @foo(i32 %size) nounwind  {
entry:
	%tmp118124 = icmp sgt i32 %size, 0		
	br i1 %tmp118124, label %bb.preheader, label %return

bb.preheader:		
	%tmp25 = add i32 %size, -1		
	%tmp125 = icmp slt i32 %size, 1		
	%smax = select i1 %tmp125, i32 1, i32 %size		
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb.preheader ], [ %indvar.next, %bb ]		
	%tmp = call i8* @llvm.stacksave( )		
	%tmp23 = alloca i8, i32 %size		
	%tmp27 = getelementptr i8, i8* %tmp23, i32 %tmp25		
	store i8 0, i8* %tmp27, align 1
	%tmp28 = call i8* @llvm.stacksave( )		
	%tmp52 = alloca i8, i32 %size		
	%tmp53 = call i8* @llvm.stacksave( )		
	%tmp77 = alloca i8, i32 %size		
	%tmp78 = call i8* @llvm.stacksave( )		
	%tmp102 = alloca i8, i32 %size		
	call void @bar( i32 %i.0.reg2mem.0, i8* %tmp23, i8* %tmp52, i8* %tmp77, i8* %tmp102, i32 %size ) nounwind 
	call void @llvm.stackrestore( i8* %tmp78 )
	call void @llvm.stackrestore( i8* %tmp53 )
	call void @llvm.stackrestore( i8* %tmp28 )
	call void @llvm.stackrestore( i8* %tmp )
	%indvar.next = add i32 %i.0.reg2mem.0, 1		
	%exitcond = icmp eq i32 %indvar.next, %smax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

declare void @bar(i32, i8*, i8*, i8*, i8*, i32)

