

define i32 @eq0(i32 %a) {
        %tmp.1 = icmp eq i32 %a, 0              
        %tmp.2 = zext i1 %tmp.1 to i32          
        ret i32 %tmp.2




}

