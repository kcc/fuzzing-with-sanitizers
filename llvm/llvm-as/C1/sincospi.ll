







attributes #0 = { readnone nounwind }

declare float @__sinpif(float %x) #0
declare float @__cospif(float %x) #0 

declare double @__sinpi(double %x) #0
declare double @__cospi(double %x) #0 

@var32 = global float 0.0
@var64 = global double 0.0

define float @test_instbased_f32() {
       %val = load float, float* @var32
       %sin = call float @__sinpif(float %val) #0
       %cos = call float @__cospif(float %val) #0
       %res = fadd float %sin, %cos
       ret float %res












}

define float @test_constant_f32() {
       %sin = call float @__sinpif(float 1.0) #0
       %cos = call float @__cospif(float 1.0) #0
       %res = fadd float %sin, %cos
       ret float %res










}

define double @test_instbased_f64() {
       %val = load double, double* @var64
       %sin = call double @__sinpi(double %val) #0
       %cos = call double @__cospi(double %val) #0
       %res = fadd double %sin, %cos
       ret double %res












}

define double @test_constant_f64() {
       %sin = call double @__sinpi(double 1.0) #0
       %cos = call double @__cospi(double 1.0) #0
       %res = fadd double %sin, %cos
       ret double %res










}
