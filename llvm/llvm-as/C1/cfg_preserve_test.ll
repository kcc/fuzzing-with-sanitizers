



define i32 @func(i32 %i) {
        ret i32 %i
}

declare void @bar()

define i32 @main(i32 %argc) {
Entry:
        %X = call i32 @func( i32 7 )            
        ret i32 %X
}

