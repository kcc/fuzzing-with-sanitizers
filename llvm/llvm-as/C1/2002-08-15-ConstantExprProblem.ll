


@.LC0 = internal global [12 x i8] c"hello world\00"             

define i8* @test() {

        br label %BB1

BB1:            
        %ret = phi i8* [ getelementptr ([12 x i8], [12 x i8]* @.LC0, i64 0, i64 0), %0 ], [ null, %BB2 ]          
        ret i8* %ret

BB2:            
        br label %BB1
}

