








target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"
@table = common global [32 x [256 x i32]] zeroinitializer, align 32		

define i32 @main() nounwind {
bb4.thread:
	br label %bb2

bb2:		
	%i.0.reg2mem.0.ph = phi i32 [ 0, %bb4.thread ], [ %i.0.reg2mem.0.ph, %bb2 ], [ %indvar.next9, %bb4 ]		
	%j.0.reg2mem.0 = phi i32 [ 0, %bb4.thread ], [ %indvar.next, %bb2 ], [ 0, %bb4 ]		
	%0 = trunc i32 %j.0.reg2mem.0 to i8		
	%1 = sext i8 %0 to i32		
	%2 = mul i32 %1, %i.0.reg2mem.0.ph		
	%3 = getelementptr [32 x [256 x i32]], [32 x [256 x i32]]* @table, i32 0, i32 %i.0.reg2mem.0.ph, i32 %j.0.reg2mem.0		
	store i32 %2, i32* %3, align 4
	%indvar.next = add i32 %j.0.reg2mem.0, 1		
	%exitcond = icmp eq i32 %indvar.next, 256		
	br i1 %exitcond, label %bb4, label %bb2

bb4:		
	%indvar.next9 = add i32 %i.0.reg2mem.0.ph, 1		
	%exitcond10 = icmp eq i32 %indvar.next9, 32		
	br i1 %exitcond10, label %bb5, label %bb2

bb5:		
	%4 = load i32, i32* getelementptr ([32 x [256 x i32]], [32 x [256 x i32]]* @table, i32 0, i32 9, i32 132), align 16		
	%5 = icmp eq i32 %4, -1116		
	br i1 %5, label %bb7, label %bb6

bb6:		
	tail call void @abort() noreturn nounwind
	unreachable

bb7:		
	ret i32 0
}

declare void @abort() noreturn nounwind
