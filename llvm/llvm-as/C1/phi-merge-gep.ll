






define void @foo(float* %Ar, float* %Ai, i64 %As, float* %Cr, float* %Ci, i64 %Cs, i64 %n) nounwind {
entry:
  %0 = getelementptr inbounds float, float* %Ar, i64 0   
  %1 = getelementptr inbounds float, float* %Ai, i64 0   
  %2 = mul i64 %n, %As                            
  %3 = getelementptr inbounds float, float* %Ar, i64 %2  
  %4 = mul i64 %n, %As                            
  %5 = getelementptr inbounds float, float* %Ai, i64 %4  
  %6 = mul i64 %n, 2                              
  %7 = mul i64 %6, %As                            
  %8 = getelementptr inbounds float, float* %Ar, i64 %7  
  %9 = mul i64 %n, 2                              
  %10 = mul i64 %9, %As                           
  %11 = getelementptr inbounds float, float* %Ai, i64 %10 
  %12 = getelementptr inbounds float, float* %Cr, i64 0  
  %13 = getelementptr inbounds float, float* %Ci, i64 0  
  %14 = mul i64 %n, %Cs                           
  %15 = getelementptr inbounds float, float* %Cr, i64 %14 
  %16 = mul i64 %n, %Cs                           
  %17 = getelementptr inbounds float, float* %Ci, i64 %16 
  %18 = mul i64 %n, 2                             
  %19 = mul i64 %18, %Cs                          
  %20 = getelementptr inbounds float, float* %Cr, i64 %19 
  %21 = mul i64 %n, 2                             
  %22 = mul i64 %21, %Cs                          
  %23 = getelementptr inbounds float, float* %Ci, i64 %22 
  br label %bb13

bb:                                               
  %24 = load float, float* %A0r.0, align 4               
  %25 = load float, float* %A0i.0, align 4               
  %26 = load float, float* %A1r.0, align 4               
  %27 = load float, float* %A1i.0, align 4               
  %28 = load float, float* %A2r.0, align 4               
  %29 = load float, float* %A2i.0, align 4               
  %30 = fadd float %26, %28                       
  %31 = fadd float %27, %29                       
  %32 = fsub float %26, %28                       
  %33 = fsub float %27, %29                       
  %34 = fadd float %24, %30                       
  %35 = fadd float %25, %31                       
  %36 = fmul float %30, -1.500000e+00             
  %37 = fmul float %31, -1.500000e+00             
  %38 = fadd float %34, %36                       
  %39 = fadd float %35, %37                       
  %40 = fmul float %32, 0x3FEBB67AE0000000        
  %41 = fmul float %33, 0x3FEBB67AE0000000        
  %42 = fadd float %38, %41                       
  %43 = fsub float %39, %40                       
  %44 = fsub float %38, %41                       
  %45 = fadd float %39, %40                       
  store float %34, float* %C0r.0, align 4
  store float %35, float* %C0i.0, align 4
  store float %42, float* %C1r.0, align 4
  store float %43, float* %C1i.0, align 4
  store float %44, float* %C2r.0, align 4
  store float %45, float* %C2i.0, align 4
  %46 = getelementptr inbounds float, float* %A0r.0, i64 %As 
  %47 = getelementptr inbounds float, float* %A0i.0, i64 %As 
  %48 = getelementptr inbounds float, float* %A1r.0, i64 %As 
  %49 = getelementptr inbounds float, float* %A1i.0, i64 %As 
  %50 = getelementptr inbounds float, float* %A2r.0, i64 %As 
  %51 = getelementptr inbounds float, float* %A2i.0, i64 %As 
  %52 = getelementptr inbounds float, float* %C0r.0, i64 %Cs 
  %53 = getelementptr inbounds float, float* %C0i.0, i64 %Cs 
  %54 = getelementptr inbounds float, float* %C1r.0, i64 %Cs 
  %55 = getelementptr inbounds float, float* %C1i.0, i64 %Cs 
  %56 = getelementptr inbounds float, float* %C2r.0, i64 %Cs 
  %57 = getelementptr inbounds float, float* %C2i.0, i64 %Cs 
  %58 = add nsw i64 %i.0, 1                       
  br label %bb13

bb13:                                             
  %i.0 = phi i64 [ 0, %entry ], [ %58, %bb ]      
  %C2i.0 = phi float* [ %23, %entry ], [ %57, %bb ] 
  %C2r.0 = phi float* [ %20, %entry ], [ %56, %bb ] 
  %C1i.0 = phi float* [ %17, %entry ], [ %55, %bb ] 
  %C1r.0 = phi float* [ %15, %entry ], [ %54, %bb ] 
  %C0i.0 = phi float* [ %13, %entry ], [ %53, %bb ] 
  %C0r.0 = phi float* [ %12, %entry ], [ %52, %bb ] 
  %A2i.0 = phi float* [ %11, %entry ], [ %51, %bb ] 
  %A2r.0 = phi float* [ %8, %entry ], [ %50, %bb ] 
  %A1i.0 = phi float* [ %5, %entry ], [ %49, %bb ] 
  %A1r.0 = phi float* [ %3, %entry ], [ %48, %bb ] 
  %A0i.0 = phi float* [ %1, %entry ], [ %47, %bb ] 
  %A0r.0 = phi float* [ %0, %entry ], [ %46, %bb ] 
  %59 = icmp slt i64 %i.0, %n                     
  br i1 %59, label %bb, label %bb14

bb14:                                             
  br label %return

return:                                           
  ret void
}
