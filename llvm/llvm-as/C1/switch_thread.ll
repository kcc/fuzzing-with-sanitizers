




declare void @foo1()

declare void @foo2()

declare void @DEAD()

define void @test1(i32 %V) {
        switch i32 %V, label %A [
                 i32 4, label %T
                 i32 17, label %Done
                 i32 1234, label %A
        ]

T:              
        call void @foo1( )
        
        switch i32 %V, label %A2 [
                 i32 4, label %B
                 i32 17, label %C
                 i32 42, label %C
        ]
A2:             
        call void @DEAD( )
        call void @DEAD( )
        
        %cond2 = icmp eq i32 %V, 4              
        br i1 %cond2, label %Done, label %C
A:              
        call void @foo1( )
        
        %cond = icmp ne i32 %V, 4               
        br i1 %cond, label %Done, label %C
Done:           
        ret void
B:              
        call void @foo2( )
        
        %cond3 = icmp eq i32 %V, 4              
        br i1 %cond3, label %Done, label %C
C:              
        call void @DEAD( )
        ret void
}

define void @test2(i32 %V) {
        switch i32 %V, label %A [
                 i32 4, label %T
                 i32 17, label %D
                 i32 1234, label %E
        ]

A:              
        call void @foo1( )
        
        switch i32 %V, label %E [
                 i32 4, label %C
                 i32 17, label %C
                 i32 42, label %D
        ]

C:              
        call void @DEAD( )
        ret void
T:              
        call void @foo1( )
        call void @foo1( )
        ret void
D:              
        call void @foo1( )
        ret void
E:              
        ret void
}

