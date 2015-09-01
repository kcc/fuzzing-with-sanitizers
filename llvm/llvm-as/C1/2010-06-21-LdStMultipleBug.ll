


%struct.CONTENTBOX = type { i32, i32, i32, i32, i32 }
%struct.FILE = type { i8* }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UNCOMBOX = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.CONTENTBOX*, %struct.UNCOMBOX*, [8 x %struct.tilebox*] }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@.str2708 = external constant [14 x i8], align 4  

define void @TW_oldinput(%struct.FILE* nocapture %fp) nounwind {
entry:
  %xcenter = alloca i32, align 4                  
  %0 = call i32 (%struct.FILE*, i8*, ...) @fscanf(%struct.FILE* %fp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str2708, i32 0, i32 0), i32* undef, i32* undef, i32* %xcenter, i32* null) nounwind 
  %1 = icmp eq i32 %0, 4                          
  br i1 %1, label %bb, label %return

bb:                                               
  %2 = load %struct.cellbox*, %struct.cellbox** undef, align 4      
  %3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %2, i32 0, i32 3 
  store i32 undef, i32* %3, align 4
  %4 = load i32, i32* undef, align 4                   
  %5 = icmp eq i32 undef, 1                       
  br i1 %5, label %bb10, label %bb445

bb10:                                             
  br i1 undef, label %bb11, label %bb445

bb11:                                             
  %6 = load %struct.tilebox*, %struct.tilebox** undef, align 4      
  %7 = load %struct.termbox*, %struct.termbox** null, align 4       
  %8 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %6, i32 0, i32 13 
  %9 = load i32, i32* %8, align 4                      
  %10 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %6, i32 0, i32 15 
  %11 = load i32, i32* %10, align 4                    
  br i1 false, label %bb12, label %bb13

bb12:                                             
  unreachable

bb13:                                             
  %iftmp.40.0.neg = sdiv i32 0, -2                
  %12 = sub nsw i32 0, %9                         
  %13 = sitofp i32 %12 to double                  
  %14 = fdiv double %13, 0.000000e+00             
  %15 = fptosi double %14 to i32                  
  %iftmp.41.0.in = add i32 0, %15                 
  %iftmp.41.0.neg = sdiv i32 %iftmp.41.0.in, -2   
  br i1 undef, label %bb43.loopexit, label %bb21

bb21:                                             
  %16 = fptosi double undef to i32                
  %17 = fsub double undef, 0.000000e+00           
  %not.460 = fcmp oge double %17, 5.000000e-01    
  %18 = zext i1 %not.460 to i32                   
  %iftmp.42.0 = add i32 %16, %iftmp.41.0.neg      
  %19 = add i32 %iftmp.42.0, %18                  
  store i32 %19, i32* undef, align 4
  %20 = sub nsw i32 0, %9                         
  %21 = sitofp i32 %20 to double                  
  %22 = fdiv double %21, 0.000000e+00             
  %23 = fptosi double %22 to i32                  
  %24 = fsub double %22, undef                    
  %not.461 = fcmp oge double %24, 5.000000e-01    
  %25 = zext i1 %not.461 to i32                   
  %iftmp.43.0 = add i32 %23, %iftmp.41.0.neg      
  %26 = add i32 %iftmp.43.0, %25                  
  %27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %6, i32 0, i32 10 
  store i32 %26, i32* %27, align 4
  %28 = fptosi double undef to i32                
  %iftmp.45.0 = add i32 %28, %iftmp.40.0.neg      
  %29 = add i32 %iftmp.45.0, 0                    
  store i32 %29, i32* undef, align 4
  br label %bb43.loopexit

bb36:                                             
  %termptr.0478 = phi %struct.termbox* [ %42, %bb36 ], [ %7, %bb43.loopexit ] 
  %30 = load i32, i32* undef, align 4                  
  %31 = sub nsw i32 %30, %9                       
  %32 = sitofp i32 %31 to double                  
  %33 = fdiv double %32, 0.000000e+00             
  %34 = fptosi double %33 to i32                  
  %iftmp.46.0 = add i32 %34, %iftmp.41.0.neg      
  %35 = add i32 %iftmp.46.0, 0                    
  store i32 %35, i32* undef, align 4
  %36 = sub nsw i32 0, %11                        
  %37 = sitofp i32 %36 to double                  
  %38 = fmul double %37, 0.000000e+00             
  %39 = fptosi double %38 to i32                  
  %iftmp.47.0 = add i32 %39, %iftmp.40.0.neg      
  %40 = add i32 %iftmp.47.0, 0                    
  store i32 %40, i32* undef, align 4
  %41 = getelementptr inbounds %struct.termbox, %struct.termbox* %termptr.0478, i32 0, i32 0 
  %42 = load %struct.termbox*, %struct.termbox** %41, align 4       
  %43 = icmp eq %struct.termbox* %42, null        
  br i1 %43, label %bb52.loopexit, label %bb36

bb43.loopexit:                                    
  br i1 undef, label %bb52.loopexit, label %bb36

bb52.loopexit:                                    
  %44 = icmp eq i32 %4, 0                         
  br i1 %44, label %bb.nph485, label %bb54

bb54:                                             
  switch i32 %4, label %bb62 [
    i32 2, label %bb56
    i32 3, label %bb57
  ]

bb56:                                             
  br label %bb62

bb57:                                             
  br label %bb62

bb62:                                             
  unreachable

bb.nph485:                                        
  br label %bb248

bb248:                                            
  %45 = icmp eq i32 undef, %4                     
  br i1 %45, label %bb322, label %bb249

bb249:                                            
  %46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %2, i32 0, i32 21, i32 undef 
  %47 = load %struct.tilebox*, %struct.tilebox** %46, align 4       
  %48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 11 
  store i32 undef, i32* %48, align 4
  unreachable

bb322:                                            
  br i1 undef, label %bb248, label %bb445

bb445:                                            
  %49 = call i32 (%struct.FILE*, i8*, ...) @fscanf(%struct.FILE* %fp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str2708, i32 0, i32 0), i32* undef, i32* undef, i32* %xcenter, i32* null) nounwind 
  %50 = icmp eq i32 %49, 4                        
  br i1 %50, label %bb, label %return

return:                                           
  ret void
}

declare i32 @fscanf(%struct.FILE* nocapture, i8* nocapture, ...) nounwind
