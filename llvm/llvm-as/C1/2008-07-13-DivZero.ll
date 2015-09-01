





define i32 @a(i32 %x, i32 %y) {
entry:
        %tobool = icmp ne i32 %y, 0             
        %cond = select i1 %tobool, i32 8, i32 0         
        %call = call i32 @b( i32 %cond )                
        %div = udiv i32 %x, %cond               
        ret i32 %div
}

declare i32 @b(i32)
