




define void @test(i32* %P, i32 %A, i32 %i) nounwind {
entry:

        icmp eq i32 %i, 0               
        br i1 %0, label %return, label %bb

bb:             
        %indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]          
        %i_addr.09.0 = sub i32 %i, %indvar              
        %tmp2 = getelementptr i32, i32* %P, i32 %i_addr.09.0         
        store i32 %A, i32* %tmp2
        %indvar.next = add i32 %indvar, 1               
        icmp eq i32 %indvar.next, %i            
        br i1 %1, label %return, label %bb

return:         
        ret void
}




define void @test_with_forced_iv(i32* %P, i32 %A, i32 %i) nounwind {
entry:

        icmp eq i32 %i, 0               
        br i1 %0, label %return, label %bb

bb:             
        %indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]          
        %i_addr.09.0 = sub i32 %i, %indvar              
        %tmp2 = getelementptr i32, i32* %P, i32 %i_addr.09.0         
        store i32 %A, i32* %tmp2
        store i32 %indvar, i32* null
        %indvar.next = add i32 %indvar, 1               
        icmp eq i32 %indvar.next, %i            
        br i1 %1, label %return, label %bb

return:         
        ret void
}

