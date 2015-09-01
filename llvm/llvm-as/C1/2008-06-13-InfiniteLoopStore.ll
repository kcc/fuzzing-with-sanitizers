

@g_139 = global i32 0           

define void @func_56(i32 %p_60) nounwind  {
entry:
        store i32 1, i32* @g_139, align 4
        %tmp1 = icmp ne i32 %p_60, 0            
        %tmp12 = zext i1 %tmp1 to i8            
        %toBool = icmp ne i8 %tmp12, 0          
        br i1 %toBool, label %bb, label %return

bb:             
        store i32 1, i32* @g_139, align 4
        br label %bb

return:         
        ret void
}

