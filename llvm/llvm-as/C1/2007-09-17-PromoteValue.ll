




	%struct.decision = type { i8, %struct.decision* }

define i32 @main() {
entry:
	br label %blah.i

blah.i:		
	%tmp3.i = icmp eq %struct.decision* null, null		
	br i1 %tmp3.i, label %clear_modes.exit, label %cond_true.i

cond_true.i:		
	%tmp1.i = getelementptr %struct.decision, %struct.decision* null, i32 0, i32 0		
	store i8 0, i8* %tmp1.i
	br label %blah.i

clear_modes.exit:		
	call void @exit( i32 0 )
	unreachable
}

define i32 @f(i8* %ptr) {
entry:
        br label %loop.head

loop.head:              
        %x = phi i8* [ %ptr, %entry ], [ %ptr.i, %cond.true ]           
        %tmp3.i = icmp ne i8* %ptr, %x          
        br i1 %tmp3.i, label %cond.true, label %exit

cond.true:              
        %ptr.i = getelementptr i8, i8* %ptr, i32 0          
        store i8 0, i8* %ptr.i
        br label %loop.head

exit:           
        ret i32 0
}

define i32 @f2(i8* %p, i8* %q) {
entry:
        br label %loop.head

loop.head:              
        %tmp3.i = icmp eq i8* null, %q            
        br i1 %tmp3.i, label %exit, label %cond.true

cond.true:              
        %ptr.i = getelementptr i8, i8* %p, i32 0          
        store i8 0, i8* %ptr.i
        br label %loop.head

exit:           
        ret i32 0
}

declare void @exit(i32)
