

define fastcc void @optimize_bit_field() nounwind {
bb4:
        %a = load i32, i32* null             
        %s = load i32, i32* getelementptr (i32, i32* null, i32 1)         
        %z = load i32, i32* getelementptr (i32, i32* null, i32 2)         
        %r = bitcast i32 0 to i32          
        %q = trunc i32 %z to i8            
        %b = icmp eq i8 0, %q              
        br i1 %b, label %bb73, label %bb72

bb72:      
        %f = tail call fastcc i32 @gen_lowpart(i32 %r, i32 %a) nounwind              
        br label %bb73

bb73:         
        %y = phi i32 [ %f, %bb72 ], [ %s, %bb4 ]          
        store i32 %y, i32* getelementptr (i32, i32* null, i32 3)
        unreachable
}

declare fastcc i32 @gen_lowpart(i32, i32) nounwind
