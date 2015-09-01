

define void @foo(i64 %X) {
entry:
        %tmp1 = and i64 %X, 3           
        %tmp = icmp sgt i64 %tmp1, 2            
        br i1 %tmp, label %UnifiedReturnBlock, label %cond_true
cond_true:              
        %tmp.upgrd.1 = tail call i32 (...) @bar( )             
        ret void
UnifiedReturnBlock:             
        ret void
}

declare i32 @bar(...)

