




@i = thread_local global i32 15
@i2 = external thread_local global i32

define i32 @f1() {







entry:
	%tmp1 = load i32, i32* @i
	ret i32 %tmp1
}

define i32* @f2() {









entry:
	ret i32* @i
}

define i32 @f3() {














entry:
	%tmp1 = load i32, i32* @i2
	ret i32 %tmp1
}

define i32* @f4() {














entry:
	ret i32* @i2
}
