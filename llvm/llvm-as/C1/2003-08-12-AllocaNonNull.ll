




declare i32 @bitmap_clear(...)

define i32 @oof() {
entry:
        %live_head = alloca i32         
        %tmp.1 = icmp ne i32* %live_head, null          
        br i1 %tmp.1, label %then, label %UnifiedExitNode

then:           
        %tmp.4 = call i32 (...) @bitmap_clear( i32* %live_head )               
        br label %UnifiedExitNode

UnifiedExitNode:                
        ret i32 0
}

