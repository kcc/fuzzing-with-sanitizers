




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.2"

define fastcc void @_ZSt16__introsort_loopIPdl17less_than_functorEvT_S2_T0_T1_(double* %__first, double* %__last, i64 %__depth_limit) nounwind ssp {
entry:
  br i1 undef, label %bb1, label %bb2

bb1:                                              
  ret void

bb2:                                              
  br label %bb2.outer.i

bb2.outer.i:                                      
  br i1 undef, label %bb1.i, label %bb5.preheader.i

bb1.i:                                            
  %indvar5.i = phi i64 [ %tmp, %bb1.i ], [ 0, %bb2.outer.i ] 
  %tmp = add i64 %indvar5.i, 1                    
  %scevgep.i = getelementptr double, double* undef, i64 %tmp 
  br i1 undef, label %bb1.i, label %bb5.preheader.i

bb5.preheader.i:                                  
  br label %bb5.i

bb5.i:                                            
  br i1 undef, label %bb5.i, label %bb7.i6

bb7.i6:                                           
  br i1 undef, label %bb9.i, label %_ZSt21__unguarded_partitionIPdd17less_than_functorET_S2_S2_T0_T1_.exit

bb9.i:                                            
  br label %bb2.outer.i

_ZSt21__unguarded_partitionIPdd17less_than_functorET_S2_S2_T0_T1_.exit: 
  unreachable
}
