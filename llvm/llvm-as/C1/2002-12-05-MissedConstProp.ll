



define i32 @test(i32 %A) {
        %A.neg = sub i32 0, %A          
        %.neg = sub i32 0, 1            
        %X = add i32 %.neg, 1           
        %Y.neg.ra = add i32 %A, %X              
        %r = add i32 %A.neg, %Y.neg.ra          
        ret i32 %r
}

