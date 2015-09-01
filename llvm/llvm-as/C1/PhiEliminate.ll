








declare void @use(i1)

declare void @use.upgrd.1(i32)


define void @test(i1 %c, i32 %V, i32 %V2) {

        br i1 %c, label %T, label %F
T:              
        br label %F
F:              
        %B1 = phi i1 [ true, %0 ], [ false, %T ]                
        %I6 = phi i32 [ %V, %0 ], [ 0, %T ]             
        call void @use( i1 %B1 )
        call void @use.upgrd.1( i32 %I6 )
        ret void
}

