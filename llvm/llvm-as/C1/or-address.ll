

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.3"







define void @test(i32* nocapture %array, i32 %r0) nounwind ssp noredzone {
bb.nph:
  br label %bb

bb:                                               
  %j.010 = phi i8 [ 0, %bb.nph ], [ %14, %bb ]    
  %k.19 = phi i8 [ 0, %bb.nph ], [ %.k.1, %bb ]   
  %i0.08 = phi i8 [ 0, %bb.nph ], [ %15, %bb ]    
  %0 = icmp slt i8 %i0.08, 4                      
  %iftmp.0.0 = select i1 %0, i8 %i0.08, i8 0      
  %1 = icmp eq i8 %i0.08, 4                       
  %2 = zext i1 %1 to i8                           
  %.k.1 = add i8 %2, %k.19                        
  %3 = shl i8 %.k.1, 2                            
  %4 = add i8 %3, %iftmp.0.0                      
  %5 = shl i8 %4, 2                               
  %6 = zext i8 %5 to i64                          
  %7 = getelementptr inbounds i32, i32* %array, i64 %6 
  store i32 %r0, i32* %7, align 4
  %8 = or i64 %6, 2                               
  %9 = getelementptr inbounds i32, i32* %array, i64 %8 
  store i32 %r0, i32* %9, align 4
  %10 = or i64 %6, 1                              
  %11 = getelementptr inbounds i32, i32* %array, i64 %10 
  store i32 %r0, i32* %11, align 4
  %12 = or i64 %6, 3                              
  %13 = getelementptr inbounds i32, i32* %array, i64 %12 
  store i32 %r0, i32* %13, align 4
  %14 = add nsw i8 %j.010, 1                      
  %15 = add i8 %iftmp.0.0, 1                      
  %exitcond = icmp eq i8 %14, 32                  
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}







define void @test1(i32* nocapture %array, i32 %r0, i8 signext %k, i8 signext %i0) nounwind {
bb.nph:
  br label %for.body

for.body:                                         
  %j.065 = phi i8 [ 0, %bb.nph ], [ %inc52, %for.body ] 
  %i0.addr.064 = phi i8 [ %i0, %bb.nph ], [ %add, %for.body ] 
  %k.addr.163 = phi i8 [ %k, %bb.nph ], [ %inc.k.addr.1, %for.body ] 
  %cmp5 = icmp slt i8 %i0.addr.064, 4             
  %cond = select i1 %cmp5, i8 %i0.addr.064, i8 0  
  %cmp12 = icmp eq i8 %i0.addr.064, 4             
  %inc = zext i1 %cmp12 to i8                     
  %inc.k.addr.1 = add i8 %inc, %k.addr.163        
  %mul = shl i8 %cond, 2                          
  %mul22 = shl i8 %inc.k.addr.1, 4                
  %add23 = add i8 %mul22, %mul                    
  %idxprom = zext i8 %add23 to i64                
  %arrayidx = getelementptr inbounds i32, i32* %array, i64 %idxprom 
  store i32 %r0, i32* %arrayidx
  %add3356 = or i64 %idxprom, 2                   
  %arrayidx36 = getelementptr inbounds i32, i32* %array, i64 %add3356 
  store i32 %r0, i32* %arrayidx36
  %add4058 = or i64 %idxprom, 1                   
  %arrayidx43 = getelementptr inbounds i32, i32* %array, i64 %add4058 
  store i32 %r0, i32* %arrayidx43
  %add4760 = or i64 %idxprom, 3                   
  %arrayidx50 = getelementptr inbounds i32, i32* %array, i64 %add4760 
  store i32 %r0, i32* %arrayidx50
  %inc52 = add nsw i8 %j.065, 1                   
  %add = add i8 %cond, 1                          
  %exitcond = icmp eq i8 %inc52, 32               
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
