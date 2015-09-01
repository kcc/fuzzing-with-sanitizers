







define i32 @test2(i32 %C) {
entry:
	%A = alloca i32
	%B = alloca i32
	%tmp = call i32 (...) @bar( i32* %A )		
	%T = load i32, i32* %A		
	%tmp2 = icmp eq i32 %C, 0		
	br i1 %tmp2, label %cond_next, label %cond_true

cond_true:		
	store i32 123, i32* %B
	call i32 @test2( i32 123 )		
	%T1 = load i32, i32* %B		
	br label %cond_next

cond_next:		
	%tmp1.0 = phi i32 [ %T1, %cond_true ], [ %T, %entry ]		
	%tmp7 = call i32 (...) @baq( )		
	%tmp8 = call i32 (...) @baq( )		
	%tmp9 = call i32 (...) @baq( )		
	%tmp10 = call i32 (...) @baq( )		
	%tmp11 = call i32 (...) @baq( )		
	%tmp12 = call i32 (...) @baq( )		
	%tmp13 = call i32 (...) @baq( )		
	%tmp14 = call i32 (...) @baq( )		
	%tmp15 = call i32 (...) @baq( )		
	%tmp16 = call i32 (...) @baq( )		
	%tmp17 = call i32 (...) @baq( )		
	%tmp18 = call i32 (...) @baq( )		
	%tmp19 = call i32 (...) @baq( )		
	%tmp20 = call i32 (...) @baq( )		
	ret i32 %tmp1.0
}

declare i32 @bar(...)

declare i32 @baq(...)
