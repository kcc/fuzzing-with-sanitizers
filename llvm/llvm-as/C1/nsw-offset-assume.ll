






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"

define void @foo(i32 %no, double* nocapture %d, double* nocapture %q) nounwind {
entry:
  %n = and i32 %no, 4294967294
  %0 = icmp sgt i32 %n, 0                         
  tail call void @llvm.assume(i1 %0)
  br label %bb.nph

bb.nph:                                           
  br label %bb

bb:                                               
  %i.01 = phi i32 [ %16, %bb1 ], [ 0, %bb.nph ]   



  %1 = sext i32 %i.01 to i64                      



  %2 = getelementptr inbounds double, double* %d, i64 %1  

  %3 = load double, double* %2, align 8                   
  %4 = sext i32 %i.01 to i64                      
  %5 = getelementptr inbounds double, double* %q, i64 %4  
  %6 = load double, double* %5, align 8                   
  %7 = or i32 %i.01, 1                            



  %8 = sext i32 %7 to i64                         



  %9 = getelementptr inbounds double, double* %q, i64 %8  



  %t7 = add nsw i32 %i.01, 1                            



  %t8 = sext i32 %t7 to i64                         



  %t9 = getelementptr inbounds double, double* %q, i64 %t8  

  %10 = load double, double* %9, align 8                  
  %11 = fadd double %6, %10                       
  %12 = fadd double %11, 3.200000e+00             
  %13 = fmul double %3, %12                       
  %14 = sext i32 %i.01 to i64                     
  %15 = getelementptr inbounds double, double* %d, i64 %14 
  store double %13, double* %15, align 8
  %16 = add nsw i32 %i.01, 2                      
  br label %bb1

bb1:                                              
  %17 = icmp slt i32 %16, %n                      
  br i1 %17, label %bb, label %bb1.return_crit_edge

bb1.return_crit_edge:                             
  br label %return

return:                                           
  ret void
}

declare void @llvm.assume(i1) nounwind





