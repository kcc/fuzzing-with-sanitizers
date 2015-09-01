
@x = global i32 0


declare i32 @e() readnone


define i32 @f() {
	%tmp = call i32 @e( )		
	ret i32 %tmp
}


define i32 @g() readonly {
	ret i32 0
}


define i32 @h() readnone {
	%tmp = load i32, i32* @x		
	ret i32 %tmp
}


