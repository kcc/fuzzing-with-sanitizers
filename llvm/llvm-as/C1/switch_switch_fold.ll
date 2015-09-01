





declare void @foo1()

declare void @foo2()

declare void @foo3()

declare void @foo4()

define void @test1(i32 %V) {
        switch i32 %V, label %F [
                 i32 4, label %T
                 i32 17, label %T
                 i32 5, label %T
                 i32 1234, label %F
        ]
T:              
        switch i32 %V, label %F [
                 i32 4, label %A
                 i32 17, label %B
                 i32 42, label %C
        ]
A:              
        call void @foo1( )
        ret void
B:              
        call void @foo2( )
        ret void
C:              
        call void @foo3( )
        ret void
F:              
        switch i32 %V, label %F [
                 i32 4, label %B
                 i32 18, label %B
                 i32 42, label %D
        ]
D:              
        call void @foo4( )
        ret void
}

