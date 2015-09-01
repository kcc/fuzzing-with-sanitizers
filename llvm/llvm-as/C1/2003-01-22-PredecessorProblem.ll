


define void @conjunction_prune() {

        br label %bb19

bb19:           
        %reg205 = phi i8* [ null, %bb22 ], [ null, %bb23 ], [ null, %0 ]                
        br i1 false, label %bb21, label %bb22

bb21:           
        %cast455 = bitcast i8* %reg205 to i8**          
        br label %bb22

bb22:           
        br i1 false, label %bb19, label %bb23

bb23:           
        br i1 false, label %bb19, label %bb28

bb28:           
        ret void
}

