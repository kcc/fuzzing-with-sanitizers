



define void @bitap() {
entry:
        %RMask.i = alloca [256 x i32], align 16         
        %buffer = alloca [147456 x i8], align 16                
        br i1 false, label %bb19, label %bb.preheader
bb.preheader:           
        ret void
bb19:           
        br i1 false, label %bb12.i, label %cond_next39
bb12.i:         
        %i.0.i = phi i32 [ %tmp11.i, %bb12.i ], [ 0, %bb19 ]            
        %gep.upgrd.1 = zext i32 %i.0.i to i64           
        %tmp9.i = getelementptr [256 x i32], [256 x i32]* %RMask.i, i32 0, i64 %gep.upgrd.1          
        store i32 0, i32* %tmp9.i
        %tmp11.i = add i32 %i.0.i, 1            
        br label %bb12.i
cond_next39:            
        ret void
}

