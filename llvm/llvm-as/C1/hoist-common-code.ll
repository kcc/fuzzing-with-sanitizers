

declare void @bar(i32)

define void @test(i1 %P, i32* %Q) {
        br i1 %P, label %T, label %F
T:              
        store i32 1, i32* %Q
        %A = load i32, i32* %Q               
        call void @bar( i32 %A )
        ret void
F:              
        store i32 1, i32* %Q
        %B = load i32, i32* %Q               
        call void @bar( i32 %B )
        ret void
}

