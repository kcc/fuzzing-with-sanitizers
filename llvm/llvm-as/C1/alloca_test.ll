




define i32 @func(i32 %i) {
        %X = alloca i32         
        store i32 %i, i32* %X
        ret i32 %i
}

declare void @bar()

define i32 @main(i32 %argc) {
Entry:


        call void @bar( )
        %X = call i32 @func( i32 7 )            
        %Y = add i32 %X, %argc          
        ret i32 %Y
}

