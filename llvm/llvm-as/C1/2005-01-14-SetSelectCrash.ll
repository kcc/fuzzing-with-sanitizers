

define i32 @main() {
        %setle = icmp sle i64 1, 0              
        %select = select i1 true, i1 %setle, i1 true            
        ret i32 0
}

