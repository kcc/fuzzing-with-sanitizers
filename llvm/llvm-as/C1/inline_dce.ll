





define internal i32 @reallysmall(i32 %A) {
        ret i32 %A
}

define void @caller1() {
        call i32 @reallysmall( i32 5 )          
        ret void
}

define void @caller2(i32 %A) {
        call i32 @reallysmall( i32 %A )         
        ret void
}

define i32 @caller3(i32 %A) {
        %B = call i32 @reallysmall( i32 %A )            
        ret i32 %B
}

