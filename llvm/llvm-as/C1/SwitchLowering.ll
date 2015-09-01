


define i8* @FindChar(i8* %CurPtr) {
entry:
        br label %bb

bb:             
        %indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]          
        %CurPtr_addr.0.rec = bitcast i32 %indvar to i32         
        %gep.upgrd.1 = zext i32 %indvar to i64          
        %CurPtr_addr.0 = getelementptr i8, i8* %CurPtr, i64 %gep.upgrd.1            
        %tmp = load i8, i8* %CurPtr_addr.0          
        %tmp2.rec = add i32 %CurPtr_addr.0.rec, 1               
        %tmp2 = getelementptr i8, i8* %CurPtr, i32 %tmp2.rec                
        %indvar.next = add i32 %indvar, 1               
        switch i8 %tmp, label %bb [
                 i8 0, label %bb7
                 i8 120, label %bb7
        ]

bb7:            
        tail call void @foo( i8 %tmp )
        ret i8* %tmp2
}

declare void @foo(i8)

