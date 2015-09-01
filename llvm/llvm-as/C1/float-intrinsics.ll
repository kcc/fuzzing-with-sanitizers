
declare double @llvm.cos.f64(double)
declare double @llvm.exp.f64(double)
declare double @llvm.exp2.f64(double)
declare double @llvm.log.f64(double)
declare double @llvm.log10.f64(double)
declare double @llvm.log2.f64(double)
declare double @llvm.pow.f64(double, double)
declare double @llvm.powi.f64(double, i32)
declare double @llvm.sin.f64(double)
declare double @llvm.sqrt.f64(double)

define double @cos(double %F) {


        %result = call double @llvm.cos.f64(double %F)
	ret double %result
}

declare float @llvm.cos.f32(float)



define float @cosf(float %F) {
        %result = call float @llvm.cos.f32(float %F)
	ret float %result
}

define double @exp(double %F) {


        %result = call double @llvm.exp.f64(double %F)
	ret double %result
}

declare float @llvm.exp.f32(float)

define float @expf(float %F) {


        %result = call float @llvm.exp.f32(float %F)
	ret float %result
}

define double @exp2(double %F) {


        %result = call double @llvm.exp2.f64(double %F)
	ret double %result
}

declare float @llvm.exp2.f32(float)

define float @exp2f(float %F) {


        %result = call float @llvm.exp2.f32(float %F)
	ret float %result
}

define double @log(double %F) {


        %result = call double @llvm.log.f64(double %F)
	ret double %result
}

declare float @llvm.log.f32(float)

define float @logf(float %F) {


        %result = call float @llvm.log.f32(float %F)
	ret float %result
}

define double @log10(double %F) {


        %result = call double @llvm.log10.f64(double %F)
	ret double %result
}

declare float @llvm.log10.f32(float)

define float @log10f(float %F) {


        %result = call float @llvm.log10.f32(float %F)
	ret float %result
}

define double @log2(double %F) {


        %result = call double @llvm.log2.f64(double %F)
	ret double %result
}

declare float @llvm.log2.f32(float)

define float @log2f(float %F) {


        %result = call float @llvm.log2.f32(float %F)
	ret float %result
}

define double @pow(double %F, double %power) {


        %result = call double @llvm.pow.f64(double %F, double %power)
	ret double %result
}

declare float @llvm.pow.f32(float, float)

define float @powf(float %F, float %power) {


        %result = call float @llvm.pow.f32(float %F, float %power)
	ret float %result
}

define double @powi(double %F, i32 %power) {


        %result = call double @llvm.powi.f64(double %F, i32 %power)
	ret double %result
}

declare float @llvm.powi.f32(float, i32)

define float @powif(float %F, i32 %power) {


        %result = call float @llvm.powi.f32(float %F, i32 %power)
	ret float %result
}

define double @sin(double %F) {


        %result = call double @llvm.sin.f64(double %F)
	ret double %result
}

declare float @llvm.sin.f32(float)

define float @sinf(float %F) {


        %result = call float @llvm.sin.f32(float %F)
	ret float %result
}

define double @sqrt(double %F) {


        %result = call double @llvm.sqrt.f64(double %F)
	ret double %result
}

declare float @llvm.sqrt.f32(float)

define float @sqrtf(float %F) {


        %result = call float @llvm.sqrt.f32(float %F)
	ret float %result
}
