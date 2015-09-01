


define void @test(i1 %C) {
        br i1 %C, label %A, label %B
A:              
        call void @test( i1 %C )
        br label %X
B:              
        call void @test( i1 %C )
        br label %X
X:              
        ret void
}

