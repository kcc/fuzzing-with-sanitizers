




	%0 = type { i64, i8* }		

declare void @bar(%0)

define fastcc void @foo() nounwind {
entry:
	call void @bar(%0 zeroinitializer)
	unreachable
}
