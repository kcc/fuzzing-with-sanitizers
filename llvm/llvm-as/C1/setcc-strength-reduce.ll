







define i1 @test1(i32 %A) {
        
        %B = icmp uge i32 %A, 1         
        ret i1 %B
}

define i1 @test2(i32 %A) {
       
        %B = icmp ugt i32 %A, 0         
        ret i1 %B
}

define i1 @test3(i8 %A) {
        
        %B = icmp sge i8 %A, -127               
        ret i1 %B
}

define i1 @test4(i8 %A) {
        
        %B = icmp sle i8 %A, 126                
        ret i1 %B
}

define i1 @test5(i8 %A) {
        
        %B = icmp slt i8 %A, 127                
        ret i1 %B
}
