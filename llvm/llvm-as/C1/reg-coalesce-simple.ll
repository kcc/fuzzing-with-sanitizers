

%struct.foo = type { i32, i32, [0 x i8] }

define i32 @test(%struct.foo* %X) nounwind {
        %tmp1 = getelementptr %struct.foo, %struct.foo* %X, i32 0, i32 2, i32 100            
        %tmp = load i8, i8* %tmp1           
        %tmp2 = zext i8 %tmp to i32             
        ret i32 %tmp2
}


