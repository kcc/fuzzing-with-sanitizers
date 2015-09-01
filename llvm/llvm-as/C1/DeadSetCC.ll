





declare void @foo()

declare void @bar()

define void @testcfg(i32 %V) {
        %C = icmp eq i32 %V, 18         
        %D = icmp eq i32 %V, 180                
        %E = or i1 %C, %D               
        br i1 %E, label %L1, label %Sw
Sw:             
        switch i32 %V, label %L1 [
                 i32 15, label %L2
                 i32 16, label %L2
        ]
L1:             
        call void @foo( )
        ret void
L2:             
        call void @bar( )
        ret void
}

