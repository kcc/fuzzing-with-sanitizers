



%bar = type { %quad, float, float, [3 x %quuz*], [3 x %bar*], [2 x %bar*], [3 x i8], i8 }
%baz = type { %bar*, i32 }
%foo = type { i8, %quux, %quad, float, [64 x %quuz], [128 x %bar], i32, %baz, %baz }
%quad = type { [4 x float] }
%quux = type { [4 x %quuz*], [4 x float], i32 }
%quuz = type { %quad, %quad }

define arm_aapcs_vfpcc %bar* @aaa(%foo* nocapture %this, %quuz* %a, %quuz* %b, %quuz* %c, i8 zeroext %forced) {
entry:
  %0 = load %bar*, %bar** undef, align 4                 
  br i1 false, label %bb85, label %bb

bb:                                               
  br i1 undef, label %bb3.i, label %bb2.i

bb2.i:                                            
  br label %bb3.i

bb3.i:                                            
  %1 = getelementptr inbounds %quuz, %quuz* %a, i32 0, i32 1, i32 0, i32 0 
  %2 = fsub float 0.000000e+00, undef             
  %3 = getelementptr inbounds %quuz, %quuz* %b, i32 0, i32 1, i32 0, i32 1 
  %4 = getelementptr inbounds %quuz, %quuz* %b, i32 0, i32 1, i32 0, i32 2 
  %5 = fsub float 0.000000e+00, undef             
  %6 = getelementptr inbounds %quuz, %quuz* %c, i32 0, i32 1, i32 0, i32 0 
  %7 = getelementptr inbounds %quuz, %quuz* %c, i32 0, i32 1, i32 0, i32 1 
  %8 = fsub float undef, undef                    
  %9 = fmul float 0.000000e+00, %8                
  %10 = fmul float %5, 0.000000e+00               
  %11 = fsub float %9, %10                        
  %12 = fmul float %2, 0.000000e+00               
  %13 = fmul float 0.000000e+00, undef            
  %14 = fsub float %12, %13                       
  store float %14, float* undef
  %15 = getelementptr inbounds %bar, %bar* %0, i32 0, i32 0, i32 0, i32 3 
  store float 0.000000e+00, float* %15
  %16 = fmul float %11, %11                       
  %17 = fadd float %16, 0.000000e+00              
  %18 = fadd float %17, undef                     
  %19 = call arm_aapcs_vfpcc  float @sqrtf(float %18) readnone 
  %20 = fcmp ogt float %19, 0x3F1A36E2E0000000    
  %21 = load float, float* %1, align 4                   
  %22 = load float, float* %3, align 4                   
  %23 = load float, float* undef, align 4                
  %24 = load float, float* %4, align 4                   
  %25 = fsub float %23, %24                       
  %26 = fmul float 0.000000e+00, %25              
  %27 = fsub float %26, undef                     
  %28 = fmul float %14, 0.000000e+00              
  %29 = fmul float %11, %25                       
  %30 = fsub float %28, %29                       
  %31 = fsub float undef, 0.000000e+00            
  %32 = fmul float %21, %27                       
  %33 = fmul float undef, %30                     
  %34 = fadd float %32, %33                       
  %35 = fmul float %23, %31                       
  %36 = fadd float %34, %35                       
  %37 = load float, float* %6, align 4                   
  %38 = load float, float* %7, align 4                   
  %39 = fsub float %22, %38                       
  %40 = load float, float* undef, align 4                
  %41 = load float, float* null, align 4                 
  %42 = fmul float %41, undef                     
  %43 = fmul float undef, %39                     
  %44 = fsub float %42, %43                       
  %45 = fmul float undef, %39                     
  %46 = fmul float %41, 0.000000e+00              
  %47 = fsub float %45, %46                       
  %48 = fmul float 0.000000e+00, %44              
  %49 = fmul float %22, undef                     
  %50 = fadd float %48, %49                       
  %51 = fmul float %24, %47                       
  %52 = fadd float %50, %51                       
  %53 = fsub float %37, %21                       
  %54 = fmul float undef, undef                   
  %55 = fmul float undef, undef                   
  %56 = fsub float %54, %55                       
  %57 = fmul float undef, %53                     
  %58 = load float, float* undef, align 4                
  %59 = fmul float %58, undef                     
  %60 = fsub float %57, %59                       
  %61 = fmul float %58, undef                     
  %62 = fmul float undef, %53                     
  %63 = fsub float %61, %62                       
  %64 = fmul float %37, %56                       
  %65 = fmul float %38, %60                       
  %66 = fadd float %64, %65                       
  %67 = fmul float %40, %63                       
  %68 = fadd float %66, %67                       
  %69 = select i1 undef, float %36, float %52     
  %70 = select i1 undef, float %69, float %68     
  %iftmp.164.0 = select i1 %20, float %19, float 1.000000e+00 
  %71 = fdiv float %70, %iftmp.164.0              
  store float %71, float* null, align 4
  %72 = icmp eq %bar* null, %0                    
  br i1 %72, label %bb4.i97, label %ccc.exit98

bb4.i97:                                          
  %73 = load %bar*, %bar** undef, align 4                
  br label %ccc.exit98

ccc.exit98:                                       
  ret %bar* null

bb85:                                             
  ret %bar* null
}

declare arm_aapcs_vfpcc float @sqrtf(float) readnone
