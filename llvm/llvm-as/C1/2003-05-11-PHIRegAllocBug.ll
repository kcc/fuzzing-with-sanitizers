

define i32 @main() {
entry:
	br label %endif
then:		
	br label %endif
endif:		
	%x = phi i32 [ 4, %entry ], [ 27, %then ]		
	%result = phi i32 [ 32, %then ], [ 0, %entry ]		
	ret i32 0
}

