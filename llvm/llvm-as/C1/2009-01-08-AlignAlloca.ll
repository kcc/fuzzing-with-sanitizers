



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"
	%struct.Key = type { { i32, i32 } }
	%struct.anon = type <{ i8, [3 x i8], i32 }>

define i32 @bar(i64 %key_token2) nounwind {
entry:
	%iospec = alloca %struct.Key		
	%ret = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	%0 = getelementptr %struct.Key, %struct.Key* %iospec, i32 0, i32 0		
	%1 = getelementptr { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0		
	store i32 0, i32* %1, align 4
	%2 = getelementptr { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1		
	store i32 0, i32* %2, align 4
	%3 = getelementptr %struct.Key, %struct.Key* %iospec, i32 0, i32 0		
	%4 = bitcast { i32, i32 }* %3 to i64*		
	store i64 %key_token2, i64* %4, align 4
	%5 = call i32 (...) @foo(%struct.Key* byval align 4 %iospec, i32* %ret) nounwind		
	%6 = load i32, i32* %ret, align 4		
	ret i32 %6
}

declare i32 @foo(...)
