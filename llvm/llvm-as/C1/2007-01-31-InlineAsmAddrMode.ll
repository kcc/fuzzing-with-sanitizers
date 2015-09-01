





	%struct.A = type { i32, i32 }


define void @test1() {
entry:
	%Out = alloca %struct.A, align 4		
	%tmp2 = getelementptr %struct.A, %struct.A* %Out, i32 0, i32 1
	%tmp5 = call i32 asm "lwbrx $0, $1", "=r,m"(i32* %tmp2 )
	ret void
}

define void @test2() {
entry:
	%Out = alloca %struct.A, align 4		
	%tmp2 = getelementptr %struct.A, %struct.A* %Out, i32 0, i32 0		
	%tmp5 = call i32 asm "lwbrx $0, $2, $1", "=r,r,bO,m"( i8* null, i32 0, i32* %tmp2 )		
	ret void
}
