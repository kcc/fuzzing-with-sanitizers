


@main_q = internal global i8* null		

define void @func2() nounwind {
entry:
	tail call void asm "mov $1,%gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(i8** inttoptr (i32 152 to i8**), i8* bitcast (i8** @main_q to i8*)) nounwind
	ret void
}
