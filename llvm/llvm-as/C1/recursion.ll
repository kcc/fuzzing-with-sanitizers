
define internal i32 @foo(i32 %X) {
        %Y = call i32 @foo( i32 %X )            
        %Z = add i32 %Y, 1              
        ret i32 %Z
}

define void @bar() {
        call i32 @foo( i32 17 )         
        ret void
}

