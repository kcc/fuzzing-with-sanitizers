




declare void @foo()

define i32 @f1(i32 %a, i32 %b, i32* %v) {
entry:


        %tmp = icmp eq i32 %a, %b               
        br i1 %tmp, label %cond_true, label %return

cond_true:              
        call void @foo()
        store i32 0, i32* %v
        ret i32 0

return:         
        call void @foo()
        ret i32 1
}

define i32 @f2(i32 %a, i32 %b, i32* %v) {
entry:


        %tmp = icmp slt i32 %a, %b              
        br i1 %tmp, label %cond_true, label %return

cond_true:              
        call void @foo()
        store i32 0, i32* %v
        ret i32 0

return:         
        call void @foo()
        ret i32 1
}

define i32 @f3(i32 %a, i32 %b, i32* %v) {
entry:


        %tmp = icmp ult i32 %a, %b              
        br i1 %tmp, label %cond_true, label %return

cond_true:              
        call void @foo()
        store i32 0, i32* %v
        ret i32 0

return:         
        call void @foo()
        ret i32 1
}

define i32 @f4(i32 %a, i32 %b, i32* %v) {
entry:


        %tmp = icmp uge i32 %a, %b              
        br i1 %tmp, label %cond_true, label %return

cond_true:              
        call void @foo()
        store i32 0, i32* %v
        ret i32 0

return:         
        call void @foo()
        ret i32 1
}
