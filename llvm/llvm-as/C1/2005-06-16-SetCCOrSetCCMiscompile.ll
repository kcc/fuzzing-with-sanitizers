



@g_07918478 = external global i32               

define i1 @test() {
        %tmp.0 = load i32, i32* @g_07918478          
        %tmp.1 = icmp ne i32 %tmp.0, 0          
        %tmp.4 = icmp ult i32 %tmp.0, 4111              
        %bothcond = or i1 %tmp.1, %tmp.4                
        ret i1 %bothcond
}

