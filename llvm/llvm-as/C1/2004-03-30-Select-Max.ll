


define i32 @max(i32 %A, i32 %B) nounwind {
        %gt = icmp sgt i32 %A, %B               
        %R = select i1 %gt, i32 %A, i32 %B              
        ret i32 %R
}

