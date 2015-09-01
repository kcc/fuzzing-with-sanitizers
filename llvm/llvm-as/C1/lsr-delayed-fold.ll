





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.0"

define fastcc void @formatValue(i64 %arg5) nounwind {
bb12:                                             
  %t = trunc i64 %arg5 to i32                   
  %t13 = sub i64 0, %arg5                       
  %t14 = and i64 %t13, 4294967295             
  br label %bb15

bb15:                                             
  %t16 = phi i64 [ 0, %bb12 ], [ %t23, %bb15 ] 
  %t17 = mul i64 %t14, %t16                 
  %t18 = add i64 undef, %t17                  
  %t19 = trunc i64 %t18 to i32                
  %t22 = icmp eq i32 %t19, %t               
  %t23 = add i64 %t16, 1                      
  br i1 %t22, label %bb24, label %bb15

bb24:                                             
  unreachable
}




define void @int323() nounwind {
entry:
  br label %for.cond

for.cond:                                         
  %g_263.tmp.1 = phi i8 [ undef, %entry ], [ %g_263.tmp.1, %for.cond ]
  %p_95.addr.0 = phi i8 [ 0, %entry ], [ %add, %for.cond ]
  %add = add i8 %p_95.addr.0, 1                   
  br i1 undef, label %for.cond, label %lbl_264

lbl_264:                                          
  %g_263.tmp.0 = phi i8 [ %g_263.tmp.1, %for.cond ] 
  %tmp7 = load i16, i16* undef                         
  %conv8 = trunc i16 %tmp7 to i8                  
  %mul.i = mul i8 %p_95.addr.0, %p_95.addr.0      
  %mul.i18 = mul i8 %mul.i, %conv8                
  %tobool12 = icmp eq i8 %mul.i18, 0              
  unreachable
}





%struct.Bu = type { i32, i32, i32 }

define void @_Z3fooP2Bui(%struct.Bu* nocapture %bu) {
entry:
  br label %for.body

for.body:                                         
  %indvar = phi i64 [ %indvar.next, %for.inc131 ], [ 0, %entry ] 
  br i1 undef, label %for.inc131, label %lor.lhs.false

lor.lhs.false:                                    
  %tmp15 = add i64 %indvar, 1                     
  %tmp17 = add i64 %indvar, 2                      
  %tmp19 = add i64 %indvar, 3                      
  %tmp21 = add i64 %indvar, 4                      
  %tmp23 = add i64 %indvar, 5                      
  %tmp25 = add i64 %indvar, 6                      
  %tmp27 = add i64 %indvar, 7                      
  %tmp29 = add i64 %indvar, 8                      
  %tmp31 = add i64 %indvar, 9                      
  %tmp35 = add i64 %indvar, 11                     
  %tmp37 = add i64 %indvar, 12                     
  %tmp39 = add i64 %indvar, 13                     
  %tmp41 = add i64 %indvar, 14                     
  %tmp43 = add i64 %indvar, 15                     
  %tmp45 = add i64 %indvar, 16                     
  %tmp47 = add i64 %indvar, 17                     
  %mul = trunc i64 %indvar to i32                  
  %add22 = trunc i64 %tmp15 to i32                
  %add28 = trunc i64 %tmp17 to i32                
  %add34 = trunc i64 %tmp19 to i32                
  %add40 = trunc i64 %tmp21 to i32                
  %add46 = trunc i64 %tmp23 to i32                
  %add52 = trunc i64 %tmp25 to i32                
  %add58 = trunc i64 %tmp27 to i32                
  %add64 = trunc i64 %tmp29 to i32                
  %add70 = trunc i64 %tmp31 to i32                
  %add82 = trunc i64 %tmp35 to i32                
  %add88 = trunc i64 %tmp37 to i32                
  %add94 = trunc i64 %tmp39 to i32                
  %add100 = trunc i64 %tmp41 to i32               
  %add106 = trunc i64 %tmp43 to i32               
  %add112 = trunc i64 %tmp45 to i32               
  %add118 = trunc i64 %tmp47 to i32               
  %tmp10 = getelementptr %struct.Bu, %struct.Bu* %bu, i64 %indvar, i32 2 
  %tmp11 = load i32, i32* %tmp10                       
  tail call void undef(i32 %add22)
  tail call void undef(i32 %add28)
  tail call void undef(i32 %add34)
  tail call void undef(i32 %add40)
  tail call void undef(i32 %add46)
  tail call void undef(i32 %add52)
  tail call void undef(i32 %add58)
  tail call void undef(i32 %add64)
  tail call void undef(i32 %add70)
  tail call void undef(i32 %add82)
  tail call void undef(i32 %add88)
  tail call void undef(i32 %add94)
  tail call void undef(i32 %add100)
  tail call void undef(i32 %add106)
  tail call void undef(i32 %add112)
  tail call void undef(i32 %add118)
  br label %for.body123

for.body123:                                      
  %j.03 = phi i32 [ 0, %lor.lhs.false ], [ %inc, %for.body123 ] 
  %add129 = add i32 %mul, %j.03                   
  tail call void undef(i32 %add129)
  %inc = add nsw i32 %j.03, 1                     
  br i1 undef, label %for.inc131, label %for.body123

for.inc131:                                       
  %indvar.next = add i64 %indvar, 1               
  br i1 undef, label %for.end134, label %for.body

for.end134:                                       
  ret void
}






define fastcc i32 @GetOptimum() nounwind {
bb:
  br label %bb1

bb1:                                              
  %t = phi i32 [ 0, %bb ], [ %t2, %bb1 ]      
  %t2 = add i32 %t, undef                     
  br i1 undef, label %bb1, label %bb3

bb3:                                              
  %t4 = add i32 undef, -1                       
  br label %bb5

bb5:                                              
  %t6 = phi i32 [ %t17, %bb16 ], [ 0, %bb3 ]  
  %t7 = add i32 undef, %t6                    
  %t8 = add i32 %t4, %t6                    
  br i1 undef, label %bb9, label %bb10

bb9:                                              
  br label %bb10

bb10:                                             
  br i1 undef, label %bb11, label %bb16

bb11:                                             
  %t12 = icmp ugt i32 %t7, %t2              
  %t13 = select i1 %t12, i32 %t2, i32 %t7 
  br label %bb14

bb14:                                             
  store i32 %t13, i32* null
  ret i32 %t8

bb16:                                             
  %t17 = add i32 %t6, 1                       
  br label %bb5
}
