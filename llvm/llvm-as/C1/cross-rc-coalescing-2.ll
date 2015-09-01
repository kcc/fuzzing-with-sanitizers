

define void @fht(float* nocapture %fz, i16 signext %n) nounwind {

entry:
  br label %bb5

bb5:                                              
  br i1 undef, label %bb5, label %bb.nph

bb.nph:                                           
  br label %bb7



bb7:                                              
  %s1.02 = phi float [ undef, %bb.nph ], [ %35, %bb9 ] 
  %tmp79 = add i32 undef, undef                   
  %tmp53 = sub i32 undef, undef                   
  %0 = fadd float 0.000000e+00, 1.000000e+00      
  %1 = fmul float 0.000000e+00, 0.000000e+00      
  br label %bb8

bb8:                                              



  %tmp54 = add i32 0, %tmp53                      
  %fi.1 = getelementptr float, float* %fz, i32 undef     
  %tmp80 = add i32 0, %tmp79                      
  %scevgep81 = getelementptr float, float* %fz, i32 %tmp80 
  %2 = load float, float* undef, align 4                 
  %3 = fmul float %2, %1                          
  %4 = load float, float* null, align 4                  
  %5 = fmul float %4, %0                          
  %6 = fsub float %3, %5                          
  %7 = fmul float %4, %1                          
  %8 = fadd float undef, %7                       
  %9 = load float, float* %fi.1, align 4                 
  %10 = fsub float %9, %8                         
  %11 = fadd float %9, %8                         
  %12 = fsub float 0.000000e+00, %6               
  %13 = fsub float 0.000000e+00, undef            
  %14 = fmul float undef, %0                      
  %15 = fadd float %14, undef                     
  %16 = load float, float* %scevgep81, align 4           
  %17 = fsub float %16, %15                       
  %18 = fadd float %16, %15                       
  %19 = load float, float* undef, align 4                
  %20 = fsub float %19, %13                       
  %21 = fadd float %19, %13                       
  %22 = fmul float %s1.02, %18                    
  %23 = fmul float 0.000000e+00, %20              
  %24 = fsub float %22, %23                       
  %25 = fmul float 0.000000e+00, %18              
  %26 = fmul float %s1.02, %20                    
  %27 = fadd float %25, %26                       
  %28 = fadd float %11, %27                       
  store float %28, float* %fi.1, align 4
  %29 = fadd float %12, %24                       
  store float %29, float* null, align 4
  %30 = fmul float 0.000000e+00, %21              
  %31 = fmul float %s1.02, %17                    
  %32 = fsub float %30, %31                       
  %33 = fsub float %10, %32                       
  store float %33, float* undef, align 4
  %34 = icmp slt i32 undef, undef                 
  br i1 %34, label %bb8, label %bb9

bb9:                                              
  %35 = fadd float 0.000000e+00, undef            
  br label %bb7
}
