






define <4 x float> @addss(<4 x float> %va, float* %pb) {









    %a = extractelement <4 x float> %va, i32 0
    %b = load float, float* %pb
    %r = fadd float %a, %b
    %vr = insertelement <4 x float> %va, float %r, i32 0
    ret <4 x float> %vr
}

define <2 x double> @addsd(<2 x double> %va, double* %pb) {









    %a = extractelement <2 x double> %va, i32 0
    %b = load double, double* %pb
    %r = fadd double %a, %b
    %vr = insertelement <2 x double> %va, double %r, i32 0
    ret <2 x double> %vr
}

define <4 x float> @subss(<4 x float> %va, float* %pb) {









    %a = extractelement <4 x float> %va, i32 0
    %b = load float, float* %pb
    %r = fsub float %a, %b
    %vr = insertelement <4 x float> %va, float %r, i32 0
    ret <4 x float> %vr
}

define <2 x double> @subsd(<2 x double> %va, double* %pb) {









    %a = extractelement <2 x double> %va, i32 0
    %b = load double, double* %pb
    %r = fsub double %a, %b
    %vr = insertelement <2 x double> %va, double %r, i32 0
    ret <2 x double> %vr
}

define <4 x float> @mulss(<4 x float> %va, float* %pb) {









    %a = extractelement <4 x float> %va, i32 0
    %b = load float, float* %pb
    %r = fmul float %a, %b
    %vr = insertelement <4 x float> %va, float %r, i32 0
    ret <4 x float> %vr
}

define <2 x double> @mulsd(<2 x double> %va, double* %pb) {









    %a = extractelement <2 x double> %va, i32 0
    %b = load double, double* %pb
    %r = fmul double %a, %b
    %vr = insertelement <2 x double> %va, double %r, i32 0
    ret <2 x double> %vr
}

define <4 x float> @divss(<4 x float> %va, float* %pb) {









    %a = extractelement <4 x float> %va, i32 0
    %b = load float, float* %pb
    %r = fdiv float %a, %b
    %vr = insertelement <4 x float> %va, float %r, i32 0
    ret <4 x float> %vr
}

define <2 x double> @divsd(<2 x double> %va, double* %pb) {









    %a = extractelement <2 x double> %va, i32 0
    %b = load double, double* %pb
    %r = fdiv double %a, %b
    %vr = insertelement <2 x double> %va, double %r, i32 0
    ret <2 x double> %vr
}
