

declare i1 @llvm.isunordered.f64(double, double)

define i1 @intcoord_cond_next55(double %tmp48.reload) {
newFuncRoot:
        br label %cond_next55

bb72.exitStub:          
        ret i1 true

cond_next62.exitStub:           
        ret i1 false

cond_next55:            
        %tmp57 = fcmp oge double %tmp48.reload, 1.000000e+00            
        %tmp58 = fcmp uno double %tmp48.reload, 1.000000e+00            
        %tmp59 = or i1 %tmp57, %tmp58           
        br i1 %tmp59, label %bb72.exitStub, label %cond_next62.exitStub
}

