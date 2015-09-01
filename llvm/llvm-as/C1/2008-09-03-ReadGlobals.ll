

@g = internal global i32 0		

define i32 @r() {
	%tmp = load i32, i32* @g		
	ret i32 %tmp
}

define i32 @f() {


entry:
	%tmp = call i32 @e( )		
	store i32 %tmp, i32* @g
	%tmp2 = call i32 @e( )		
	ret i32 %tmp2
}

declare i32 @e() readonly	
