







define i32 @test1(i32 %a) {
entry:
	%tmp.1 = and i32 %a, 268431360		
	ret i32 %tmp.1
}

define i32 @test2(i32 %a) {
entry:
	%tmp.1 = and i32 %a, -268435441		
	ret i32 %tmp.1
}

define i32 @test3(i32 %a) {
entry:
	%tmp.2 = ashr i32 %a, 8		
	%tmp.3 = and i32 %tmp.2, 255		
	ret i32 %tmp.3
}

define i32 @test4(i32 %a) {
entry:
	%tmp.3 = lshr i32 %a, 8		
	%tmp.4 = and i32 %tmp.3, 255		
	ret i32 %tmp.4
}

define i32 @test5(i32 %a) {
entry:
	%tmp.2 = shl i32 %a, 8		
	%tmp.3 = and i32 %tmp.2, -8388608		
	ret i32 %tmp.3
}

define i32 @test6(i32 %a) {
entry:
	%tmp.1 = and i32 %a, 65280		
	%tmp.2 = ashr i32 %tmp.1, 8		
	ret i32 %tmp.2
}

define i32 @test7(i32 %a) {
entry:
	%tmp.1 = and i32 %a, 65280		
	%tmp.2 = lshr i32 %tmp.1, 8		
	ret i32 %tmp.2
}

define i32 @test8(i32 %a) {
entry:
	%tmp.1 = and i32 %a, 16711680		
	%tmp.2 = shl i32 %tmp.1, 8		
	ret i32 %tmp.2
}
