





target datalayout = "e-p:32:32"
target triple = "i686-pc-linux-gnu"
@r = external global [17 x i32]         

define i1 @print_pgm_cond_true(i32 %tmp12.reload, i32* %tmp16.out) {
newFuncRoot:
        br label %cond_true

bb27.exitStub:          
        store i32 %tmp16, i32* %tmp16.out
        ret i1 true

cond_next23.exitStub:           
        store i32 %tmp16, i32* %tmp16.out
        ret i1 false

cond_true:              
        %tmp15 = getelementptr [17 x i32], [17 x i32]* @r, i32 0, i32 %tmp12.reload         
        %tmp16 = load i32, i32* %tmp15               
        %tmp18 = icmp slt i32 %tmp16, -31               
        %tmp21 = icmp sgt i32 %tmp16, 31                
        %bothcond = or i1 %tmp18, %tmp21                
        br i1 %bothcond, label %bb27.exitStub, label %cond_next23.exitStub
}

