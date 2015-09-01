


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv7-eabi"

define arm_aapcs_vfpcc void @foo() {
entry:
  %0 = load float, float* null, align 4                  
  %1 = fmul float %0, undef                       
  %2 = fmul float 0.000000e+00, %1                
  %3 = fmul float %0, %1                          
  %4 = fadd float 0.000000e+00, %3                
  %5 = fsub float 1.000000e+00, %4                


  %6 = fsub float 1.000000e+00, undef             
  %7 = fsub float %2, undef                       
  %8 = fsub float 0.000000e+00, undef             
  %9 = fadd float %2, undef                       
  %10 = load float, float* undef, align 8                
  %11 = fmul float %8, %10                        
  %12 = fadd float undef, %11                     
  %13 = fmul float undef, undef                   
  %14 = fmul float %6, 0.000000e+00               
  %15 = fadd float %13, %14                       
  %16 = fmul float %9, %10                        
  %17 = fadd float %15, %16                       
  %18 = fmul float 0.000000e+00, undef            
  %19 = fadd float %18, 0.000000e+00              
  %20 = fmul float undef, %10                     
  %21 = fadd float %19, %20                       
  %22 = load float, float* undef, align 8                
  %23 = fmul float %5, %22                        
  %24 = fadd float %23, undef                     
  %25 = load float, float* undef, align 8                
  %26 = fmul float %8, %25                        
  %27 = fadd float %24, %26                       
  %28 = fmul float %9, %25                        
  %29 = fadd float undef, %28                     
  %30 = fmul float %8, undef                      
  %31 = fadd float undef, %30                     
  %32 = fmul float %6, undef                      
  %33 = fadd float undef, %32                     
  %34 = fmul float %9, undef                      
  %35 = fadd float %33, %34                       
  %36 = fmul float 0.000000e+00, undef            
  %37 = fmul float %7, undef                      
  %38 = fadd float %36, %37                       
  %39 = fmul float undef, undef                   
  %40 = fadd float %38, %39                       
  store float %12, float* undef, align 8
  store float %17, float* undef, align 4
  store float %21, float* undef, align 8
  store float %27, float* undef, align 8
  store float %29, float* undef, align 4
  store float %31, float* undef, align 8
  store float %40, float* undef, align 8
  store float %12, float* null, align 8
  %41 = fmul float %17, undef                     
  %42 = fadd float %41, undef                     
  %43 = fmul float %35, undef                     
  %44 = fadd float %42, %43                       
  store float %44, float* null, align 4
  unreachable
}
