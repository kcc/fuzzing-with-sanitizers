


define void @test1(float %a, i32* %b) nounwind {


        %tmp.2 = fptosi float %a to i32         
        store i32 %tmp.2, i32* %b
        ret void










}

define void @test2(float %a, i32* %b, i32 %i) nounwind {


        %tmp.2 = getelementptr i32, i32* %b, i32 1           
        %tmp.5 = getelementptr i32, i32* %b, i32 %i          
        %tmp.7 = fptosi float %a to i32         
        store i32 %tmp.7, i32* %tmp.5
        store i32 %tmp.7, i32* %tmp.2
        store i32 %tmp.7, i32* %b
        ret void










}

