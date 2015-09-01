

define void @test3(float* %glob, i32 %X) {
entry:
        %tmp = load float, float* %glob                
        %tmp2 = getelementptr float, float* %glob, i32 2               
        %tmp3 = load float, float* %tmp2               
        %tmp.upgrd.1 = fcmp ogt float %tmp, %tmp3               
        br i1 %tmp.upgrd.1, label %cond_true, label %UnifiedReturnBlock

cond_true:              
        %tmp.upgrd.2 = tail call i32 (...) @bar( )             
        ret void

UnifiedReturnBlock:             
        ret void
}

declare i32 @bar(...)



