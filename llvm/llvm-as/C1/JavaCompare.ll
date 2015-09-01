




define i1 @le(i32 %A, i32 %B) {
        %c1 = icmp sgt i32 %A, %B               
        %tmp = select i1 %c1, i32 1, i32 0              
        %c2 = icmp slt i32 %A, %B               
        %result = select i1 %c2, i32 -1, i32 %tmp               
        %c3 = icmp sle i32 %result, 0           
        ret i1 %c3
}

