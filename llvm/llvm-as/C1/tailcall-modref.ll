

define i32 @test() {

        %A = alloca i32         
        call void @foo( i32* %A )
        %X = load i32, i32* %A               
        tail call void @bar( )
        %Y = load i32, i32* %A               
        %Z = sub i32 %X, %Y             
        ret i32 %Z
}

declare void @foo(i32*)

declare void @bar()
