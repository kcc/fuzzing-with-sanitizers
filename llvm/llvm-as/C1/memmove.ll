



@S = internal constant [33 x i8] c"panic: restorelist inconsistency\00"		
@h = constant [2 x i8] c"h\00"		
@hel = constant [4 x i8] c"hel\00"		
@hello_u = constant [8 x i8] c"hello_u\00"		

define void @test1(i8* %A, i8* %B, i32 %N) {
	call void @llvm.memmove.p0i8.p0i8.i32(i8* %A, i8* %B, i32 0, i32 1, i1 false)
	ret void
}

define void @test2(i8* %A, i32 %N) {
        
	call void @llvm.memmove.p0i8.p0i8.i32(i8* %A, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @S, i32 0, i32 0), i32 %N, i32 1, i1 false)
	ret void
}

define i32 @test3() {
	%h_p = getelementptr [2 x i8], [2 x i8]* @h, i32 0, i32 0		
	%hel_p = getelementptr [4 x i8], [4 x i8]* @hel, i32 0, i32 0		
	%hello_u_p = getelementptr [8 x i8], [8 x i8]* @hello_u, i32 0, i32 0		
	%target = alloca [1024 x i8]		
	%target_p = getelementptr [1024 x i8], [1024 x i8]* %target, i32 0, i32 0		
        call void @llvm.memmove.p0i8.p0i8.i32(i8* %target_p, i8* %h_p, i32 2, i32 2, i1 false)
        call void @llvm.memmove.p0i8.p0i8.i32(i8* %target_p, i8* %hel_p, i32 4, i32 4, i1 false)
        call void @llvm.memmove.p0i8.p0i8.i32(i8* %target_p, i8* %hello_u_p, i32 8, i32 8, i1 false)
	ret i32 0
}


define void @test4(i8* %a) {
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %a, i8* %a, i32 100, i32 1, i1 false)
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
