

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

%nested = type { i32, [4 x i32] }



define i32 @test1() {



	%A = alloca %nested
	%B = getelementptr %nested, %nested* %A, i32 0, i32 1, i32 0
	%C = getelementptr i32, i32* %B, i32 2
	%D = load i32, i32* %C
	ret i32 %D
}


define i32 @test2() {


	%A = alloca %nested
	%B = getelementptr %nested, %nested* %A, i32 0, i32 1, i32 0
	%C = getelementptr i32, i32* %B, i32 4
	%D = load i32, i32* %C
	ret i32 %D
}


define i32 @test3() {



	%A = alloca %nested
	%B = bitcast %nested* %A to i32*
	%C = getelementptr i32, i32* %B, i32 2
	%D = load i32, i32* %C
	ret i32 %D
}


define i32 @test4() {


	%A = alloca %nested
	%B = bitcast %nested* %A to i32*
	%C = getelementptr i32, i32* %B, i32 -1
	%D = load i32, i32* %C
	ret i32 %D
}
