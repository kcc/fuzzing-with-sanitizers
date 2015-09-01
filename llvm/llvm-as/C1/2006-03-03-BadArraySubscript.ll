

target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"



define void @test(i32 %N) {
entry:
	%X = alloca [3 x [3 x i32]]		
	%tmp.24 = icmp sgt i32 %N, 0		
	br i1 %tmp.24, label %no_exit, label %loopexit

no_exit:		
	%i.0.0 = phi i32 [ 0, %entry ], [ %inc, %no_exit ]		
	%tmp.6 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %X, i32 0, i32 0, i32 %i.0.0		
	store i32 1, i32* %tmp.6
	%tmp.8 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %X, i32 0, i32 0, i32 0		
	%tmp.9 = load i32, i32* %tmp.8		
	%tmp.11 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %X, i32 0, i32 1, i32 0		
	%tmp.12 = load i32, i32* %tmp.11		
	%tmp.13 = add i32 %tmp.12, %tmp.9		
	%inc = add i32 %i.0.0, 1		
	%tmp.2 = icmp slt i32 %inc, %N		
	br i1 %tmp.2, label %no_exit, label %loopexit

loopexit:		
	%Y.0.1 = phi i32 [ 0, %entry ], [ %tmp.13, %no_exit ]		
	%tmp.4 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %X, i32 0, i32 0		
	%tmp.15 = call i32 (...) @foo( [3 x i32]* %tmp.4, i32 %Y.0.1 )		
	ret void
}

declare i32 @foo(...)
