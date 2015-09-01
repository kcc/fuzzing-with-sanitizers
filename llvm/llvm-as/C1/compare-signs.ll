






















define i32 @test3(i32 %a, i32 %b) nounwind readnone {

entry:



        %0 = lshr i32 %a, 31            
        %1 = lshr i32 %b, 31            
        %2 = icmp eq i32 %0, %1         
        %3 = zext i1 %2 to i32          
        ret i32 %3



}



define i32 @test3i(i32 %a, i32 %b) nounwind readnone {

entry:



        %0 = lshr i32 %a, 29            
        %1 = lshr i32 %b, 29            
        %2 = or i32 %0, 35
        %3 = or i32 %1, 35
        %4 = icmp eq i32 %2, %3         
        %5 = zext i1 %4 to i32          
        ret i32 %5



}
