
declare i32 @llvm.xcore.getid()

define i32 @test() {



	%result = call i32 @llvm.xcore.getid()
	ret i32 %result
}
