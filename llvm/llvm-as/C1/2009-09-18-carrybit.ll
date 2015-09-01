

target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin9.6"

define i64 @foo(i64 %r.0.ph, i64 %q.0.ph, i32 %sr1.1.ph) nounwind {
entry:





  %tmp0 = add i64 %r.0.ph, -1                           
  br label %bb40

bb40:                                             
  %indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb40 ] 
  %carry.0274 = phi i32 [ 0, %entry ], [%tmp122, %bb40 ] 
  %r.0273 = phi i64 [ %r.0.ph, %entry ], [ %tmp124, %bb40 ] 
  %q.0272 = phi i64 [ %q.0.ph, %entry ], [ %ins169, %bb40 ] 
  %tmp1 = lshr i64 %r.0273, 31                     
  %tmp2 = trunc i64 %tmp1 to i32                    
  %tmp3 = and i32 %tmp2, -2                         
  %tmp213 = trunc i64 %r.0273 to i32              
  %tmp106 = lshr i32 %tmp213, 31                     
  %tmp107 = or i32 %tmp3, %tmp106                        
  %tmp215 = zext i32 %tmp107 to i64                  
  %tmp216 = shl i64 %tmp215, 32                   
  %tmp108 = shl i32 %tmp213, 1                       
  %tmp109 = lshr i64 %q.0272, 63                     
  %tmp110 = trunc i64 %tmp109 to i32                    
  %tmp111 = or i32 %tmp108, %tmp110                        
  %tmp222 = zext i32 %tmp111 to i64                  
  %ins224 = or i64 %tmp216, %tmp222               
  %tmp112 = lshr i64 %q.0272, 31                     
  %tmp113 = trunc i64 %tmp112 to i32                    
  %tmp114 = and i32 %tmp113, -2                         
  %tmp158 = trunc i64 %q.0272 to i32              
  %tmp115 = lshr i32 %tmp158, 31                     
  %tmp116 = or i32 %tmp114, %tmp115                        
  %tmp160 = zext i32 %tmp116 to i64                  
  %tmp161 = shl i64 %tmp160, 32                   
  %tmp117 = shl i32 %tmp158, 1                       
  %tmp118 = or i32 %tmp117, %carry.0274                 
  %tmp167 = zext i32 %tmp118 to i64                  
  %ins169 = or i64 %tmp161, %tmp167               
  %tmp119 = sub i64 %tmp0, %ins224                    
  %tmp120 = ashr i64 %tmp119, 63                        
  %tmp121 = trunc i64 %tmp120 to i32                    
  %tmp122 = and i32 %tmp121, 1                          
  %tmp123 = and i64 %tmp120, %q.0.ph                         
  %tmp124 = sub i64 %ins224, %tmp123                    
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, %sr1.1.ph 
  br i1 %exitcond, label %bb41.bb42_crit_edge, label %bb40

bb41.bb42_crit_edge:                              
  %phitmp278 = zext i32 %tmp122 to i64               
  %tmp125 = shl i64 %ins169, 1                    
  %tmp126 = or i64 %phitmp278, %tmp125              
  ret i64 %tmp126
}
