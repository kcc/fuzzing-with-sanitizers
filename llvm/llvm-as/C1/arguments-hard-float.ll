

















@bytes = global [11 x i8] zeroinitializer
@dwords = global [11 x i64] zeroinitializer
@floats = global [11 x float] zeroinitializer
@doubles = global [11 x double] zeroinitializer

define void @double_args(double %a, double %b, double %c, double %d, double %e,
                         double %f, double %g, double %h, double %i) nounwind {
entry:
        %0 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 1
        store volatile double %a, double* %0
        %1 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 2
        store volatile double %b, double* %1
        %2 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 3
        store volatile double %c, double* %2
        %3 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 4
        store volatile double %d, double* %3
        %4 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 5
        store volatile double %e, double* %4
        %5 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 6
        store volatile double %f, double* %5
        %6 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 7
        store volatile double %g, double* %6
        %7 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 8
        store volatile double %h, double* %7
        %8 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 9
        store volatile double %i, double* %8
        ret void
}








































define void @float_args(float %a, float %b, float %c, float %d, float %e,
                        float %f, float %g, float %h, float %i) nounwind {
entry:
        %0 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 1
        store volatile float %a, float* %0
        %1 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 2
        store volatile float %b, float* %1
        %2 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 3
        store volatile float %c, float* %2
        %3 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 4
        store volatile float %d, float* %3
        %4 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 5
        store volatile float %e, float* %4
        %5 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 6
        store volatile float %f, float* %5
        %6 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 7
        store volatile float %g, float* %6
        %7 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 8
        store volatile float %h, float* %7
        %8 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 9
        store volatile float %i, float* %8
        ret void
}












































define void @double_arg2(i8 %a, double %b) nounwind {
entry:
        %0 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 1
        store volatile i8 %a, i8* %0
        %1 = getelementptr [11 x double], [11 x double]* @doubles, i32 0, i32 1
        store volatile double %b, double* %1
        ret void
}























define void @float_arg2(i8 %a, float %b) nounwind {
entry:
        %0 = getelementptr [11 x i8], [11 x i8]* @bytes, i32 0, i32 1
        store volatile i8 %a, i8* %0
        %1 = getelementptr [11 x float], [11 x float]* @floats, i32 0, i32 1
        store volatile float %b, float* %1
        ret void
}



















