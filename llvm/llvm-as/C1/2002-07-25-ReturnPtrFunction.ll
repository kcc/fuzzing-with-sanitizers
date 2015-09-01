





declare void (i32)* @foo()

define void @test() {
        call void (i32)* () @foo( )           
        ret void
}


