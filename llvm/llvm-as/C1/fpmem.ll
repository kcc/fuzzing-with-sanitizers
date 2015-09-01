

define float @f1(float %a) {


        ret float 0.000000e+00
}

define float @f2(float* %v, float %u) {


        %tmp = load float, float* %v           
        %tmp1 = fadd float %tmp, %u              
        ret float %tmp1
}

define float @f2offset(float* %v, float %u) {


        %addr = getelementptr float, float* %v, i32 1
        %tmp = load float, float* %addr
        %tmp1 = fadd float %tmp, %u
        ret float %tmp1
}

define float @f2noffset(float* %v, float %u) {


        %addr = getelementptr float, float* %v, i32 -1
        %tmp = load float, float* %addr
        %tmp1 = fadd float %tmp, %u
        ret float %tmp1
}

define void @f3(float %a, float %b, float* %v) {


        %tmp = fadd float %a, %b         
        store float %tmp, float* %v
        ret void
}
