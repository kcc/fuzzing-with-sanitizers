


define i64 @test(i16 %tmp510, i16 %tmp512) {
	%W = sext i16 %tmp510 to i32           
        %X = sext i16 %tmp512 to i32           
        %Y = add i32 %W, %X               
        %Z = sext i32 %Y to i64          
	ret i64 %Z
}
