



@A = global i32 5		
@B = global i32 6		

define i32 @main() {
	%A = or i1 false, icmp slt (i32* @A, i32* @B)		
	ret i32 0
}

