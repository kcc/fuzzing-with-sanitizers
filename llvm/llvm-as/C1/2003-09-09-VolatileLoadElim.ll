

define void @test(i32* %P) {
        
        %X = load volatile i32, i32* %P              
        ret void
}
