

define void @intersect_pixel() {
entry:
        %tmp125 = fcmp uno double 0.000000e+00, 0.000000e+00            
        %tmp126 = or i1 %tmp125, false          
        %tmp126.not = xor i1 %tmp126, true              
        %brmerge1 = or i1 %tmp126.not, false            
        br i1 %brmerge1, label %bb154, label %cond_false133

cond_false133:          
        ret void

bb154:          
        %tmp164 = icmp eq i32 0, 0              
        ret void
}

declare i1 @llvm.isunordered.f64(double, double)

