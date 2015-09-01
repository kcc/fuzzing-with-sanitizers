








define void @build_tree(i32 %ml) {

        br label %bb2

bb2:            
        %reg137 = phi i32 [ %reg140, %bb2 ], [ 12, %0 ]         
        %reg138 = phi i32 [ %reg139, %bb2 ], [ 0, %0 ]          
        %reg139 = add i32 %reg138, 1            
        %reg140 = add i32 %reg137, -1           
        br i1 false, label %bb2, label %bb3

bb3:            
        ret void
}

