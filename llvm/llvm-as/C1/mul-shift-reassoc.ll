


define i32 @test(i32 %X, i32 %Y) {
	
        
        %tmp.2 = shl i32 %X, 1          
        %tmp.3 = mul i32 %tmp.2, %Y             
        %tmp.5 = add i32 %tmp.3, %Y             
        ret i32 %tmp.5
}

