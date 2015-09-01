




define i32 @main() nounwind {
entry:
	br i1 icmp ne (i32 trunc (i64 bitcast (<2 x i32> <i32 2, i32 2> to i64) to i32), i32 2), label %bb, label %bb1

bb:		
	tail call void @abort() noreturn nounwind
	unreachable

bb1:		
	ret i32 0
}

declare void @abort() noreturn nounwind
