

define zeroext i16 @add(i16* nocapture %a, i16 zeroext %n) nounwind readonly {
entry:
  %cmp8 = icmp eq i16 %n, 0                       
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         
  %i.010 = phi i16 [ 0, %entry ], [ %inc, %for.body ] 
  %sum.09 = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  %arrayidx = getelementptr i16, i16* %a, i16 %i.010   


  %tmp4 = load i16, i16* %arrayidx                     
  %add = add i16 %tmp4, %sum.09                   
  %inc = add i16 %i.010, 1                        
  %exitcond = icmp eq i16 %inc, %n                
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  ret i16 %sum.0.lcssa
}

define zeroext i16 @sub(i16* nocapture %a, i16 zeroext %n) nounwind readonly {
entry:
  %cmp8 = icmp eq i16 %n, 0                       
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         
  %i.010 = phi i16 [ 0, %entry ], [ %inc, %for.body ] 
  %sum.09 = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  %arrayidx = getelementptr i16, i16* %a, i16 %i.010   


  %tmp4 = load i16, i16* %arrayidx                     
  %add = sub i16 %tmp4, %sum.09                   
  %inc = add i16 %i.010, 1                        
  %exitcond = icmp eq i16 %inc, %n                
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  ret i16 %sum.0.lcssa
}

define zeroext i16 @or(i16* nocapture %a, i16 zeroext %n) nounwind readonly {
entry:
  %cmp8 = icmp eq i16 %n, 0                       
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         
  %i.010 = phi i16 [ 0, %entry ], [ %inc, %for.body ] 
  %sum.09 = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  %arrayidx = getelementptr i16, i16* %a, i16 %i.010   


  %tmp4 = load i16, i16* %arrayidx                     
  %add = or i16 %tmp4, %sum.09                   
  %inc = add i16 %i.010, 1                        
  %exitcond = icmp eq i16 %inc, %n                
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  ret i16 %sum.0.lcssa
}

define zeroext i16 @xor(i16* nocapture %a, i16 zeroext %n) nounwind readonly {
entry:
  %cmp8 = icmp eq i16 %n, 0                       
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         
  %i.010 = phi i16 [ 0, %entry ], [ %inc, %for.body ] 
  %sum.09 = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  %arrayidx = getelementptr i16, i16* %a, i16 %i.010   


  %tmp4 = load i16, i16* %arrayidx                     
  %add = xor i16 %tmp4, %sum.09                   
  %inc = add i16 %i.010, 1                        
  %exitcond = icmp eq i16 %inc, %n                
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  ret i16 %sum.0.lcssa
}

define zeroext i16 @and(i16* nocapture %a, i16 zeroext %n) nounwind readonly {
entry:
  %cmp8 = icmp eq i16 %n, 0                       
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         
  %i.010 = phi i16 [ 0, %entry ], [ %inc, %for.body ] 
  %sum.09 = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  %arrayidx = getelementptr i16, i16* %a, i16 %i.010   


  %tmp4 = load i16, i16* %arrayidx                     
  %add = and i16 %tmp4, %sum.09                   
  %inc = add i16 %i.010, 1                        
  %exitcond = icmp eq i16 %inc, %n                
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i16 [ 0, %entry ], [ %add, %for.body ] 
  ret i16 %sum.0.lcssa
}
