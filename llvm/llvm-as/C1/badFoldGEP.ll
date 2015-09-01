











        %Domain = type { i8*, i32, i32*, i32, i32, i32*, %Domain* }
@domain_array = external global [497 x %Domain]         

declare void @opaque([497 x %Domain]*)

define i32 @main(i32 %argc, i8** %argv) {
bb0:
        call void @opaque( [497 x %Domain]* @domain_array )
        %cann-indvar-idxcast = sext i32 %argc to i64            
        %reg841 = getelementptr [497 x %Domain], [497 x %Domain]* @domain_array, i64 0, i64 %cann-indvar-idxcast, i32 3          
        %reg846 = getelementptr i32, i32* %reg841, i64 1             
        %reg820 = load i32, i32* %reg846             
        ret i32 %reg820
}

