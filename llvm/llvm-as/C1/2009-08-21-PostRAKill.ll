


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv7-apple-darwin9"

%struct.tree = type { i32, double, double, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree* }
@g = common global %struct.tree* null

define %struct.tree* @tsp(%struct.tree* %t, i32 %nproc) nounwind {
entry:
  %t.idx51.val.i = load double, double* null              
  br i1 undef, label %bb4.i, label %bb.i

bb.i:                                             
  unreachable

bb4.i:                                            
  %0 = load %struct.tree*, %struct.tree** @g, align 4         
  %.idx45.i = getelementptr %struct.tree, %struct.tree* %0, i32 0, i32 1 
  %.idx45.val.i = load double, double* %.idx45.i          
  %.idx46.i = getelementptr %struct.tree, %struct.tree* %0, i32 0, i32 2 
  %.idx46.val.i = load double, double* %.idx46.i          
  %1 = fsub double 0.000000e+00, %.idx45.val.i    
  %2 = fmul double %1, %1                         
  %3 = fsub double %t.idx51.val.i, %.idx46.val.i  
  %4 = fmul double %3, %3                         
  %5 = fadd double %2, %4                         
  %6 = tail call double @llvm.sqrt.f64(double %5) nounwind 
  br i1 undef, label %bb7.i4, label %bb6.i

bb6.i:                                            
  br label %bb7.i4

bb7.i4:                                           
  %tton1.0.i = phi double [ %6, %bb6.i ], [ undef, %bb4.i ] 
  unreachable
}

declare double @llvm.sqrt.f64(double) nounwind readonly
