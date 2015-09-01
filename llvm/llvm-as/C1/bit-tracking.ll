





define i32 @test3(i32 %B) {
        %ELIMinc = and i32 %B, 1                
        %tmp.5 = xor i32 %ELIMinc, 1            
        %ELIM7 = and i32 %B, -2         
        %tmp.8 = or i32 %tmp.5, %ELIM7          
        ret i32 %tmp.8
}



define i32 @test4(i32 %B) {
        %ELIM3 = shl i32 %B, 31         
        %ELIM4 = ashr i32 %ELIM3, 31            
        %inc = add i32 %ELIM4, 1                
        %ELIM5 = and i32 %inc, 1                
        %ELIM7 = and i32 %B, -2         
        %tmp.8 = or i32 %ELIM5, %ELIM7          
        ret i32 %tmp.8
}

