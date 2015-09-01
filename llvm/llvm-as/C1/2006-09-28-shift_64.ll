

target datalayout = "E-p:64:64"
target triple = "powerpc64-apple-darwin8"

define void @glArrayElement_CompExec() {
entry:
        %tmp3 = and i64 0, -8388609             
        br label %cond_true24
cond_false:             
        ret void
cond_true24:            
        %indvar.ph = phi i32 [ 0, %entry ], [ %indvar.next, %cond_true24 ]              
        %indvar = add i32 0, %indvar.ph         
        %code.0 = trunc i32 %indvar to i8               
        %tmp5 = add i8 %code.0, 16              
        %shift.upgrd.1 = zext i8 %tmp5 to i64           
        %tmp7 = lshr i64 %tmp3, %shift.upgrd.1          
        %tmp7.upgrd.2 = trunc i64 %tmp7 to i32          
        %tmp8 = and i32 %tmp7.upgrd.2, 1                
        %tmp8.upgrd.3 = icmp eq i32 %tmp8, 0            
        %indvar.next = add i32 %indvar, 1               
        br i1 %tmp8.upgrd.3, label %cond_false, label %cond_true24
}

