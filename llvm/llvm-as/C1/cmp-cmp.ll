

define void @test(i64 %X) {
        %tmp1 = and i64 %X, 3           
        %tmp = icmp sgt i64 %tmp1, 2            
        br i1 %tmp, label %UnifiedReturnBlock, label %cond_true
cond_true:              
        tail call void @test( i64 0 )
        ret void
UnifiedReturnBlock:             
        ret void
}

