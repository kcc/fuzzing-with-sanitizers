

define void @solve() {
entry:
	%targetBlock = call i16 @solve_code( )		
	br label %codeReplTail
then.1:		
	ret void
loopexit.0:		
	ret void
codeReplTail:		
	switch i16 %targetBlock, label %codeReplTail [
		 i16 0, label %loopexit.0
		 i16 1, label %then.1
	]
}

declare i16 @solve_code()

