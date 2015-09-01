

define void @foo(i32 %X, i32 %Y, i32 %Z) {
entry:
        %tmp = icmp eq i32 %X, 0                
        %tmp3 = icmp slt i32 %Y, 5              
        %tmp4 = and i1 %tmp3, %tmp              
        br i1 %tmp4, label %cond_true, label %UnifiedReturnBlock
cond_true:              
        %tmp5 = tail call i32 (...) @bar( )            
        ret void
UnifiedReturnBlock:             
        ret void
}

declare i32 @bar(...)

