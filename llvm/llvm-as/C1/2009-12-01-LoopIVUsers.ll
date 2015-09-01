


target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32"

define void @fred(i32 %three_by_three, i8* %in, double %dt1, i32 %x_size, i32 %y_size, i8* %bp) nounwind {
entry:








  %three_by_three_addr = alloca i32               
  %in_addr = alloca i8*                           
  %dt_addr = alloca float                         
  %x_size_addr = alloca i32                       
  %y_size_addr = alloca i32                       
  %bp_addr = alloca i8*                           
  %tmp_image = alloca i8*                         
  %out = alloca i8*                               
  %cp = alloca i8*                                
  %dpt = alloca i8*                               
  %dp = alloca i8*                                
  %ip = alloca i8*                                
  %centre = alloca i32                            
  %tmp = alloca i32                               
  %brightness = alloca i32                        
  %area = alloca i32                              
  %y = alloca i32                                 
  %x = alloca i32                                 
  %j = alloca i32                                 
  %i = alloca i32                                 
  %mask_size = alloca i32                         
  %increment = alloca i32                         
  %n_max = alloca i32                             
  %temp = alloca float                            
  %"alloca point" = bitcast i32 0 to i32          
  store i32 %three_by_three, i32* %three_by_three_addr
  store i8* %in, i8** %in_addr
  %dt = fptrunc double %dt1 to float              
  store float %dt, float* %dt_addr
  store i32 %x_size, i32* %x_size_addr
  store i32 %y_size, i32* %y_size_addr
  store i8* %bp, i8** %bp_addr
  %0 = load i8*, i8** %in_addr, align 4                
  store i8* %0, i8** %out, align 4
  %1 = call  i32 (...) @foo() nounwind 
  store i32 %1, i32* %i, align 4
  %2 = load i32, i32* %three_by_three_addr, align 4    
  %3 = icmp eq i32 %2, 0                          
  br i1 %3, label %bb, label %bb2

bb:                                               
  %4 = load float, float* %dt_addr, align 4              
  %5 = fpext float %4 to double                   
  %6 = fmul double %5, 1.500000e+00               
  %7 = fptosi double %6 to i32                    
  %8 = add nsw i32 %7, 1                          
  store i32 %8, i32* %mask_size, align 4
  br label %bb3

bb2:                                              
  store i32 1, i32* %mask_size, align 4
  br label %bb3

bb3:                                              
  %9 = load i32, i32* %mask_size, align 4              
  %10 = mul i32 %9, 2                             
  %11 = add nsw i32 %10, 1                        
  store i32 %11, i32* %n_max, align 4
  %12 = load i32, i32* %x_size_addr, align 4           
  %13 = load i32, i32* %n_max, align 4                 
  %14 = sub i32 %12, %13                          
  store i32 %14, i32* %increment, align 4
  %15 = load i32, i32* %n_max, align 4                 
  %16 = load i32, i32* %n_max, align 4                 
  %17 = mul i32 %15, %16                          
  %18 = call  noalias i8* @malloc(i32 %17) nounwind 
  store i8* %18, i8** %dp, align 4
  %19 = load i8*, i8** %dp, align 4                    
  store i8* %19, i8** %dpt, align 4
  %20 = load float, float* %dt_addr, align 4             
  %21 = load float, float* %dt_addr, align 4             
  %22 = fmul float %20, %21                       
  %23 = fsub float -0.000000e+00, %22             
  store float %23, float* %temp, align 4
  %24 = load i32, i32* %mask_size, align 4             
  %25 = sub i32 0, %24                            
  store i32 %25, i32* %j, align 4
  br label %bb5

bb4:                                              
  %26 = load i32, i32* %j, align 4                     
  %27 = load i32, i32* %j, align 4                     
  %28 = mul i32 %26, %27                          
  %29 = sitofp i32 %28 to double                  
  %30 = fmul double %29, 1.234000e+00             
  %31 = fptosi double %30 to i32                  
  store i32 %31, i32* %x, align 4
  %32 = load i32, i32* %x, align 4                     
  %33 = trunc i32 %32 to i8                       
  %34 = load i8*, i8** %dpt, align 4                   
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %dpt, align 4                   
  %36 = getelementptr inbounds i8, i8* %35, i64 1     
  store i8* %36, i8** %dpt, align 4
  %37 = load i32, i32* %j, align 4                     
  %38 = add nsw i32 %37, 1                        
  store i32 %38, i32* %j, align 4
  br label %bb5

bb5:                                              
  %39 = load i32, i32* %j, align 4                     
  %40 = load i32, i32* %mask_size, align 4             
  %41 = icmp sle i32 %39, %40                     
  br i1 %41, label %bb4, label %bb6

bb6:                                              
  br label %return

return:                                           
  ret void
}

declare i32 @foo(...)

declare noalias i8* @malloc(i32) nounwind
