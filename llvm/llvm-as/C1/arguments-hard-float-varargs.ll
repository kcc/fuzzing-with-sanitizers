




















@floats = global [11 x float] zeroinitializer
@doubles = global [11 x double] zeroinitializer

define void @double_args(double %a, ...)
                         nounwind {
entry:
        %0 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 1
        store volatile double %a, double* %0

        %ap = alloca i8*
        %ap2 = bitcast i8** %ap to i8*
        call void @llvm.va_start(i8* %ap2)
        %b = va_arg i8** %ap, double
        %1 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 2
        store volatile double %b, double* %1
        call void @llvm.va_end(i8* %ap2)
        ret void
}



















































define void @float_args(float %a, ...) nounwind {
entry:
        %0 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 1
        store volatile float %a, float* %0

        %ap = alloca i8*
        %ap2 = bitcast i8** %ap to i8*
        call void @llvm.va_start(i8* %ap2)
        %b = va_arg i8** %ap, float
        %1 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 2
        store volatile float %b, float* %1
        call void @llvm.va_end(i8* %ap2)
        ret void
}






















































declare void @llvm.va_start(i8*)
declare void @llvm.va_copy(i8*, i8*)
declare void @llvm.va_end(i8*)
