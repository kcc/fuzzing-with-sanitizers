








declare void @foo()

define void @test_direct() {
        call void @foo( )
        ret void
}

define void @test_indirect(void ()* %fp) {
        call void %fp( )
        ret void
}

define void @test_abs() {
        %fp = inttoptr i32 400 to void ()*              
        call void %fp( )
        ret void
}

