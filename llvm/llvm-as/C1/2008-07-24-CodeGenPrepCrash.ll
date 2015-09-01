


define void @main({ i32 }*) {
entry:
	%sret1 = alloca { i32 }		
	load { i32 }, { i32 }* %sret1		
	ret void
}
