
define void @main() {
entry:
	br i1 false, label %Out, label %loop
loop:		
	%LI = icmp sgt i32 0, 0		
	br i1 %LI, label %loop, label %Out
Out:		
	ret void
}

