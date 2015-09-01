

@lens = external global i8*             
@vals = external global i32*            

define i32 @test(i32 %i) {
        %tmp = load i8*, i8** @lens          
        %tmp1 = getelementptr i8, i8* %tmp, i32 %i          
        %tmp.upgrd.1 = load i8, i8* %tmp1           
        %tmp2 = zext i8 %tmp.upgrd.1 to i32             
        %tmp3 = load i32*, i32** @vals                
        %tmp5 = sub i32 1, %tmp2                
        %tmp6 = getelementptr i32, i32* %tmp3, i32 %tmp5             
        %tmp7 = load i32, i32* %tmp6         
        ret i32 %tmp7
}

