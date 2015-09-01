

define void @test() {
entry:
        br label %UnifiedReturnBlock

UnifiedReturnBlock:             
        ret void

invoke_catch.0:         
        br i1 false, label %UnifiedUnwindBlock, label %UnifiedReturnBlock

UnifiedUnwindBlock:             
        unreachable
}

