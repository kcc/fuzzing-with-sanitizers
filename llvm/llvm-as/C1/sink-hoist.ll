














define double @foo(double %x, double %y, i1 %c) nounwind {
  %a = fdiv double %x, 3.2
  %b = fdiv double %y, 3.3
  %z = select i1 %c, double %a, double %b
  ret double %z
}











define double @split(double %x, double %y, i1 %c) nounwind {
  %a = fdiv double %x, 3.2
  %z = select i1 %c, double %a, double %y
  ret double %z
}







define void @bar(double* nocapture %p, i64 %n) nounwind {
entry:
  %0 = icmp sgt i64 %n, 0
  br i1 %0, label %bb, label %return

bb:
  %i.03 = phi i64 [ 0, %entry ], [ %3, %bb ]
  %scevgep = getelementptr double, double* %p, i64 %i.03
  %1 = load double, double* %scevgep, align 8
  %2 = fdiv double 3.200000e+00, %1
  store double %2, double* %scevgep, align 8
  %3 = add nsw i64 %i.03, 1
  %exitcond = icmp eq i64 %3, %n
  br i1 %exitcond, label %return, label %bb

return:
  ret void
}


































@_minusZero.6007 = internal constant <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00> 
@twoTo23.6008 = internal constant <4 x float> <float 8.388608e+06, float 8.388608e+06, float 8.388608e+06, float 8.388608e+06> 

define void @vv(float* %y, float* %x, i32* %n) nounwind ssp {
entry:
  br label %bb60

bb:                                               
  %i.0 = phi i32 [ 0, %bb60 ]                    
  %0 = bitcast float* %x_addr.0 to <4 x float>*   
  %1 = load <4 x float>, <4 x float>* %0, align 16             
  %tmp20 = bitcast <4 x float> %1 to <4 x i32>    
  %tmp22 = and <4 x i32> %tmp20, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647> 
  %tmp23 = bitcast <4 x i32> %tmp22 to <4 x float> 
  %tmp25 = bitcast <4 x float> %1 to <4 x i32>    
  %tmp27 = and <4 x i32> %tmp25, <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648> 
  %tmp30 = call <4 x float> @llvm.x86.sse.cmp.ps(<4 x float> %tmp23, <4 x float> <float 8.388608e+06, float 8.388608e+06, float 8.388608e+06, float 8.388608e+06>, i8 5) 
  %tmp34 = bitcast <4 x float> %tmp30 to <4 x i32> 
  %tmp36 = xor <4 x i32> %tmp34, <i32 -1, i32 -1, i32 -1, i32 -1> 
  %tmp37 = and <4 x i32> %tmp36, <i32 1258291200, i32 1258291200, i32 1258291200, i32 1258291200> 
  %tmp42 = or <4 x i32> %tmp37, %tmp27            
  %tmp43 = bitcast <4 x i32> %tmp42 to <4 x float> 
  %tmp45 = fadd <4 x float> %1, %tmp43            
  %tmp47 = fsub <4 x float> %tmp45, %tmp43        
  %tmp49 = call <4 x float> @llvm.x86.sse.cmp.ps(<4 x float> %1, <4 x float> %tmp47, i8 1) 
  %2 = bitcast <4 x float> %tmp49 to <4 x i32>    
  %3 = call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %2) nounwind readnone 
  %tmp53 = fadd <4 x float> %tmp47, %3            
  %tmp55 = bitcast <4 x float> %tmp53 to <4 x i32> 
  %tmp57 = or <4 x i32> %tmp55, %tmp27            
  %tmp58 = bitcast <4 x i32> %tmp57 to <4 x float> 
  %4 = bitcast float* %y_addr.0 to <4 x float>*   
  store <4 x float> %tmp58, <4 x float>* %4, align 16
  %5 = getelementptr float, float* %x_addr.0, i64 4      
  %6 = getelementptr float, float* %y_addr.0, i64 4      
  %7 = add i32 %i.0, 4                            
  %8 = load i32, i32* %n, align 4                      
  %9 = icmp sgt i32 %8, %7                        
  br i1 %9, label %bb60, label %return

bb60:                                             
  %x_addr.0 = phi float* [ %x, %entry ], [ %5, %bb ] 
  %y_addr.0 = phi float* [ %y, %entry ], [ %6, %bb ] 
  br label %bb

return:                                           
  ret void
}

declare <4 x float> @llvm.x86.sse.cmp.ps(<4 x float>, <4 x float>, i8) nounwind readnone

declare <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32>) nounwind readnone







@cl_options_count = external constant i32         

define void @default_get_pch_validity() nounwind {
entry:
  %tmp4 = load i32, i32* @cl_options_count, align 4    
  %tmp5 = icmp eq i32 %tmp4, 0                    
  br i1 %tmp5, label %bb6, label %bb2

bb2:                                              
  %i.019 = phi i64 [ 0, %entry ], [ %tmp25, %bb2 ] 
  %tmp25 = add i64 %i.019, 1                      
  %tmp11 = load i32, i32* @cl_options_count, align 4   
  %tmp12 = zext i32 %tmp11 to i64                 
  %tmp13 = icmp ugt i64 %tmp12, %tmp25            
  br i1 %tmp13, label %bb2, label %bb6

bb6:                                              
  ret void
}
