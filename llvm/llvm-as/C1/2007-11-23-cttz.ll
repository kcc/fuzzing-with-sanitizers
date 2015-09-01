

declare i13 @llvm.cttz.i13(i13, i1)

define i13 @test() {
	%X = call i13 @llvm.cttz.i13(i13 0, i1 false)
	ret i13 %X
}
