


define i32 @main(i8*) nounwind {
entry:
        br label %continue.outer

continue.outer:         
        %p.0.ph.rec = phi i32 [ 0, %entry ], [ %indvar.next, %case4 ]          
        %p.0.ph = getelementptr i8, i8* %0, i32 %p.0.ph.rec         
        %1 = load i8, i8* %p.0.ph           
        switch i8 %1, label %infloop [
                i8 0, label %return.split
                i8 76, label %case4
                i8 108, label %case4
                i8 104, label %case4
                i8 42, label %case4
        ]

case4:          
        %indvar.next = add i32 %p.0.ph.rec, 1           
        br label %continue.outer

return.split:           
        ret i32 0

infloop:                
        br label %infloop
}
