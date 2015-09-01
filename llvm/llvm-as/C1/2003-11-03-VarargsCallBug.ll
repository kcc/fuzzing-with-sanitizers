


target datalayout = "e-p:32:32"

declare void @foo(...)

define void @test(i64 %X) {
        %Y = inttoptr i64 %X to i32*            
        call void (...) @foo( i32* %Y )
        ret void
}

