



define i32 @f2(i32* %p, i8* %q) {
entry:
        br label %loop.head

loop.head:              
        store i32 20, i32* %p
        %tmp3.i = icmp eq i8* null, %q            
        br i1 %tmp3.i, label %exit, label %cond.true
        
cond.true:              
        store i32 40, i32* %p
        br label %loop.head



exit:           
        ret i32 0
}

