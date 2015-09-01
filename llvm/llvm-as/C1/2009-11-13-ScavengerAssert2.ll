


%bar = type { %quad, float, float, [3 x %quuz*], [3 x %bar*], [2 x %bar*], [3 x i8], i8 }
%baz = type { %bar*, i32 }
%foo = type { i8, %quux, %quad, float, [64 x %quuz], [128 x %bar], i32, %baz, %baz }
%quad = type { [4 x float] }
%quux = type { [4 x %quuz*], [4 x float], i32 }
%quuz = type { %quad, %quad }

define arm_aapcs_vfpcc %bar* @aaa(%foo* nocapture %this, %quuz* %a, %quuz* %b, %quuz* %c, i8 zeroext %forced) {
entry:
  br i1 undef, label %bb85, label %bb

bb:                                               
  br i1 undef, label %bb3.i, label %bb2.i

bb2.i:                                            
  br label %bb3.i

bb3.i:                                            
  %0 = getelementptr inbounds %quuz, %quuz* %a, i32 0, i32 1, i32 0, i32 0 
  %1 = fsub float 0.000000e+00, undef             
  %2 = getelementptr inbounds %quuz, %quuz* %b, i32 0, i32 1, i32 0, i32 1 
  %3 = load float, float* %2, align 4                    
  %4 = getelementptr inbounds %quuz, %quuz* %a, i32 0, i32 1, i32 0, i32 1 
  %5 = fsub float %3, undef                       
  %6 = getelementptr inbounds %quuz, %quuz* %b, i32 0, i32 1, i32 0, i32 2 
  %7 = load float, float* %6, align 4                    
  %8 = fsub float %7, undef                       
  %9 = getelementptr inbounds %quuz, %quuz* %c, i32 0, i32 1, i32 0, i32 0 
  %10 = load float, float* %9, align 4                   
  %11 = fsub float %10, undef                     
  %12 = getelementptr inbounds %quuz, %quuz* %c, i32 0, i32 1, i32 0, i32 1 
  %13 = load float, float* %12, align 4                  
  %14 = fsub float %13, undef                     
  %15 = load float, float* undef, align 4                
  %16 = fsub float %15, undef                     
  %17 = fmul float %5, %16                        
  %18 = fsub float %17, 0.000000e+00              
  %19 = fmul float %8, %11                        
  %20 = fsub float %19, undef                     
  %21 = fmul float %1, %14                        
  %22 = fmul float %5, %11                        
  %23 = fsub float %21, %22                       
  store float %18, float* undef
  %24 = getelementptr inbounds %bar, %bar* null, i32 0, i32 0, i32 0, i32 1 
  store float %20, float* %24
  store float %23, float* undef
  %25 = getelementptr inbounds %bar, %bar* null, i32 0, i32 0, i32 0, i32 3 
  %26 = fmul float %18, %18                       
  %27 = fadd float %26, undef                     
  %28 = fadd float %27, undef                     
  %29 = call arm_aapcs_vfpcc  float @sqrtf(float %28) readnone 
  %30 = load float, float* null, align 4                 
  %31 = load float, float* %4, align 4                   
  %32 = load float, float* %2, align 4                   
  %33 = load float, float* null, align 4                 
  %34 = load float, float* %6, align 4                   
  %35 = fsub float %33, %34                       
  %36 = fmul float %20, %35                       
  %37 = fsub float %36, undef                     
  %38 = fmul float %23, 0.000000e+00              
  %39 = fmul float %18, %35                       
  %40 = fsub float %38, %39                       
  %41 = fmul float %18, 0.000000e+00              
  %42 = fmul float %20, 0.000000e+00              
  %43 = fsub float %41, %42                       
  %44 = fmul float 0.000000e+00, %37              
  %45 = fmul float %31, %40                       
  %46 = fadd float %44, %45                       
  %47 = fmul float %33, %43                       
  %48 = fadd float %46, %47                       
  %49 = load float, float* %9, align 4                   
  %50 = fsub float %30, %49                       
  %51 = load float, float* %12, align 4                  
  %52 = fsub float %32, %51                       
  %53 = load float, float* undef, align 4                
  %54 = load float, float* %24, align 4                  
  %55 = fmul float %54, undef                     
  %56 = fmul float undef, %52                     
  %57 = fsub float %55, %56                       
  %58 = fmul float undef, %52                     
  %59 = fmul float %54, %50                       
  %60 = fsub float %58, %59                       
  %61 = fmul float %30, %57                       
  %62 = fmul float %32, 0.000000e+00              
  %63 = fadd float %61, %62                       
  %64 = fmul float %34, %60                       
  %65 = fadd float %63, %64                       
  %66 = fcmp olt float %48, %65                   
  %67 = fsub float %49, 0.000000e+00              
  %68 = fsub float %51, %31                       
  %69 = fsub float %53, %33                       
  %70 = fmul float undef, %67                     
  %71 = load float, float* undef, align 4                
  %72 = fmul float %71, %69                       
  %73 = fsub float %70, %72                       
  %74 = fmul float %71, %68                       
  %75 = fsub float %74, 0.000000e+00              
  %76 = fmul float %51, %73                       
  %77 = fadd float undef, %76                     
  %78 = fmul float %53, %75                       
  %79 = fadd float %77, %78                       
  %80 = select i1 %66, float %48, float %65       
  %81 = select i1 undef, float %80, float %79     
  %iftmp.164.0 = select i1 undef, float %29, float 1.000000e+00 
  %82 = fdiv float %81, %iftmp.164.0              
  %iftmp.165.0 = select i1 undef, float %82, float 0.000000e+00 
  store float %iftmp.165.0, float* undef, align 4
  br i1 false, label %bb4.i97, label %ccc.exit98

bb4.i97:                                          
  br label %ccc.exit98

ccc.exit98:                                       
  ret %bar* null

bb85:                                             
  ret %bar* null
}

declare arm_aapcs_vfpcc float @sqrtf(float) readnone
