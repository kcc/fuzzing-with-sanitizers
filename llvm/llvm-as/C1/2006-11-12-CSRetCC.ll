

target triple = "i686-pc-linux-gnu"
@str = internal constant [9 x i8] c"%f+%f*i\0A\00"              

define i32 @main() {





entry:
        %retval = alloca i32, align 4           
        %tmp = alloca { double, double }, align 16              
        %tmp1 = alloca { double, double }, align 16             
        %tmp2 = alloca { double, double }, align 16             
        %pi = alloca double, align 8            
        %z = alloca { double, double }, align 16                
        %"alloca point" = bitcast i32 0 to i32          
        store double 0x400921FB54442D18, double* %pi
        %tmp.upgrd.1 = load double, double* %pi         
        %real = getelementptr { double, double }, { double, double }* %tmp1, i64 0, i32 0           
        store double 0.000000e+00, double* %real
        %real3 = getelementptr { double, double }, { double, double }* %tmp1, i64 0, i32 1          
        store double %tmp.upgrd.1, double* %real3
        %tmp.upgrd.2 = getelementptr { double, double }, { double, double }* %tmp, i64 0, i32 0             
        %tmp4 = getelementptr { double, double }, { double, double }* %tmp1, i64 0, i32 0           
        %tmp5 = load double, double* %tmp4              
        store double %tmp5, double* %tmp.upgrd.2
        %tmp6 = getelementptr { double, double }, { double, double }* %tmp, i64 0, i32 1            
        %tmp7 = getelementptr { double, double }, { double, double }* %tmp1, i64 0, i32 1           
        %tmp8 = load double, double* %tmp7              
        store double %tmp8, double* %tmp6
        %tmp.upgrd.3 = bitcast { double, double }* %tmp to { i64, i64 }*                
        %tmp.upgrd.4 = getelementptr { i64, i64 }, { i64, i64 }* %tmp.upgrd.3, i64 0, i32 0           
        %tmp.upgrd.5 = load i64, i64* %tmp.upgrd.4           
        %tmp9 = bitcast { double, double }* %tmp to { i64, i64 }*               
        %tmp10 = getelementptr { i64, i64 }, { i64, i64 }* %tmp9, i64 0, i32 1                
        %tmp11 = load i64, i64* %tmp10               
        call void @cexp( { double, double }* sret  %tmp2, i64 %tmp.upgrd.5, i64 %tmp11 )
        %tmp12 = getelementptr { double, double }, { double, double }* %z, i64 0, i32 0             
        %tmp13 = getelementptr { double, double }, { double, double }* %tmp2, i64 0, i32 0          
        %tmp14 = load double, double* %tmp13            
        store double %tmp14, double* %tmp12
        %tmp15 = getelementptr { double, double }, { double, double }* %z, i64 0, i32 1             
        %tmp16 = getelementptr { double, double }, { double, double }* %tmp2, i64 0, i32 1          
        %tmp17 = load double, double* %tmp16            
        store double %tmp17, double* %tmp15
        %tmp18 = getelementptr { double, double }, { double, double }* %z, i64 0, i32 1             
        %tmp19 = load double, double* %tmp18            
        %tmp20 = getelementptr { double, double }, { double, double }* %z, i64 0, i32 0             
        %tmp21 = load double, double* %tmp20            
        %tmp.upgrd.6 = getelementptr [9 x i8], [9 x i8]* @str, i32 0, i64 0               
        %tmp.upgrd.7 = call i32 (i8*, ...) @printf( i8* %tmp.upgrd.6, double %tmp21, double %tmp19 )           
        br label %finish
finish:
        %retval.upgrd.8 = load i32, i32* %retval             
        ret i32 %retval.upgrd.8
}

declare void @cexp({ double, double }* sret , i64, i64)

declare i32 @printf(i8*, ...)

