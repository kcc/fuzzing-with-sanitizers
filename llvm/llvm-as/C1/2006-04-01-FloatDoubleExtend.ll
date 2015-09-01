


define double @CalcSpeed(float %tmp127) {
        %tmp145 = fpext float %tmp127 to double         
        %tmp150 = call double asm "frsqrte $0,$1", "=f,f"( double %tmp145 )             
        ret double %tmp150
}

