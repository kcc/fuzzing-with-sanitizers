


declare void @bar()

define void @test(i32 %X, i32 %Y) {
entry:
        %tmp.2 = icmp ne i32 %X, %Y             
        br i1 %tmp.2, label %shortcirc_next, label %UnifiedReturnBlock
shortcirc_next:         
        %tmp.3 = icmp ne i32 %X, %Y             
        br i1 %tmp.3, label %UnifiedReturnBlock, label %then
then:           
        call void @bar( )
        ret void
UnifiedReturnBlock:             
        ret void
}

