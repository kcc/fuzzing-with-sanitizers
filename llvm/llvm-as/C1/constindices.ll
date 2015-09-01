




        %MixedA = type { float, [15 x i32], i8, float }
        %MixedB = type { float, %MixedA, float }
@fmtArg = internal global [44 x i8] c"sqrt(2) = %g\0Aexp(1) = %g\0Api = %g\0Afive = %g\0A\00"           

declare i32 @printf(i8*, ...)

define i32 @main() {
        %ScalarA = alloca %MixedA               
        %ScalarB = alloca %MixedB               
        %ArrayA = alloca %MixedA, i32 4         
        %ArrayB = alloca %MixedB, i32 3         
        %I1 = getelementptr %MixedA, %MixedA* %ScalarA, i64 0, i32 0             
        store float 0x3FF6A09020000000, float* %I1
        %I2 = getelementptr %MixedB, %MixedB* %ScalarB, i64 0, i32 1, i32 0              
        store float 0x4005BF1420000000, float* %I2
        %fptrA = getelementptr %MixedA, %MixedA* %ArrayA, i64 1, i32 0           
        %fptrB = getelementptr %MixedB, %MixedB* %ArrayB, i64 2, i32 1, i32 0            
        store float 0x400921CAC0000000, float* %fptrA
        store float 5.000000e+00, float* %fptrB

        
        %fptrA1 = getelementptr %MixedA, %MixedA* %ArrayA, i64 3         
        %fptrA2 = getelementptr %MixedA, %MixedA* %fptrA1, i64 0, i32 1          
        %fptrA3 = getelementptr [15 x i32], [15 x i32]* %fptrA2, i64 0, i64 8               
        store i32 5, i32* %fptrA3
        %sqrtTwo = load float, float* %I1              
        %exp = load float, float* %I2          
        %I3 = getelementptr %MixedA, %MixedA* %ArrayA, i64 1, i32 0              
        %pi = load float, float* %I3           
        %I4 = getelementptr %MixedB, %MixedB* %ArrayB, i64 2, i32 1, i32 0               
        %five = load float, float* %I4         
        %dsqrtTwo = fpext float %sqrtTwo to double              
        %dexp = fpext float %exp to double              
        %dpi = fpext float %pi to double                
        %dfive = fpext float %five to double            
        %castFmt = getelementptr [44 x i8], [44 x i8]* @fmtArg, i64 0, i64 0               
        call i32 (i8*, ...) @printf( i8* %castFmt, double %dsqrtTwo, double %dexp, double %dpi, double %dfive )     
        ret i32 0
}
