



	%0 = type { i32, %1* }		
	%1 = type { i32, i8* }		

define x86_stdcallcc i32 @_Dmain(%0 %unnamed) {
entry:
	br label %whilebody

whilebody:		
	%i.0 = phi i64 [ 0, %entry ], [ %tmp11, %endwhile5 ]		
	%m.0 = phi i64 [ 0, %entry ], [ %tmp11, %endwhile5 ]		
	%tmp2 = mul i64 %m.0, %m.0		
	br label %whilecond3

whilecond3:		
	%j.0 = phi i64 [ %tmp2, %whilebody ], [ %tmp9, %whilebody4 ]		
	%tmp7 = icmp ne i64 %j.0, 0		
	br i1 %tmp7, label %whilebody4, label %endwhile5

whilebody4:		
	%tmp9 = add i64 %j.0, 1		
	br label %whilecond3

endwhile5:		
	%tmp11 = add i64 %i.0, 1		
	br label %whilebody
}
