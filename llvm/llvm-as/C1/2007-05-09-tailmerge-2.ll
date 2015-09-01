










target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-apple-darwin8"

define i32 @f(i32 %i, i32 %q) {
entry:
	%i_addr = alloca i32		
	%q_addr = alloca i32		
	%retval = alloca i32, align 4		
	store i32 %i, i32* %i_addr
	store i32 %q, i32* %q_addr
	%tmp = load i32, i32* %i_addr		
	%tmp1 = icmp ne i32 %tmp, 0		
	%tmp12 = zext i1 %tmp1 to i8		
	%toBool = icmp ne i8 %tmp12, 0		
	br i1 %toBool, label %cond_true, label %cond_false

cond_true:		
	%tmp3 = call i32 (...) @bar( )		
	%tmp4 = call i32 (...) @baz( i32 5, i32 6 )		
	%tmp7 = load i32, i32* %q_addr		
	%tmp8 = icmp ne i32 %tmp7, 0		
	%tmp89 = zext i1 %tmp8 to i8		
	%toBool10 = icmp ne i8 %tmp89, 0		
	br i1 %toBool10, label %cond_true11, label %cond_false15

cond_false:		
	%tmp5 = call i32 (...) @foo( )		
	%tmp6 = call i32 (...) @baz( i32 5, i32 6 )		
	%tmp27 = load i32, i32* %q_addr		
	%tmp28 = icmp ne i32 %tmp27, 0		
	%tmp289 = zext i1 %tmp28 to i8		
	%toBool210 = icmp ne i8 %tmp289, 0		
	br i1 %toBool210, label %cond_true11, label %cond_false15

cond_true11:		
	%tmp13 = call i32 (...) @foo( )		
	%tmp14 = call i32 (...) @quux( i32 3, i32 4 )		
	br label %cond_next18

cond_false15:		
	%tmp16 = call i32 (...) @bar( )		
	%tmp17 = call i32 (...) @quux( i32 3, i32 4 )		
	br label %cond_next18

cond_next18:		
	%tmp19 = call i32 (...) @bar( )		
	br label %return

return:		
	%retval20 = load i32, i32* %retval		
	ret i32 %retval20
}

declare i32 @bar(...)

declare i32 @baz(...)

declare i32 @foo(...)

declare i32 @quux(...)
