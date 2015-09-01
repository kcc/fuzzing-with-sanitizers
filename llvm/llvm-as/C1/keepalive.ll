

%Ty = type <{ i32, i32 }>







define internal zeroext i32 @test1(i32 %DEADARG1) nounwind {
        ret i32 1
}



define internal <{ i32, i32 }> @test2(i32 %DEADARG1) {
        ret <{ i32, i32 }> <{ i32 1, i32 2 }>
}


declare void @user(i32, <{ i32, i32 }>)

define void @caller() {
        %B = call i32 @test1(i32 1)
        %C = call <{ i32, i32 }> @test2(i32 2)
        call void @user(i32 %B, <{ i32, i32 }> %C)
        ret void
}



define internal x86_thiscallcc i32 @unused_this(i32* %this, i32* inalloca %argmem) {
	%v = load i32, i32* %argmem
	ret i32 %v
}


define i32 @caller2() {
	%t = alloca i32
	%m = alloca inalloca i32
	store i32 42, i32* %m
	%v = call x86_thiscallcc i32 @unused_this(i32* %t, i32* inalloca %m)
	ret i32 %v
}


