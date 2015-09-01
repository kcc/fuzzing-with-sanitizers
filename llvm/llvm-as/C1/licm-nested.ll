





@main.flags = internal global [8193 x i8] zeroinitializer, align 16 
@.str = private constant [11 x i8] c"Count: %d\0A\00" 

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind ssp {
entry:
  %cmp = icmp eq i32 %argc, 2                     
  br i1 %cmp, label %while.cond.preheader, label %bb.nph53

while.cond.preheader:                             
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1 
  %tmp2 = load i8*, i8** %arrayidx                     
  %call = tail call i32 @atoi(i8* %tmp2) nounwind 
  %tobool51 = icmp eq i32 %call, 0                
  br i1 %tobool51, label %while.end, label %bb.nph53

while.cond.loopexit:                              
  %indvar.next77 = add i32 %indvar76, 1           
  %exitcond78 = icmp eq i32 %indvar.next77, %NUM.0.ph80 
  br i1 %exitcond78, label %while.end, label %bb.nph

bb.nph53:                                         
  %NUM.0.ph80 = phi i32 [ %call, %while.cond.preheader ], [ 17000, %entry ] 
  br label %bb.nph

bb.nph:                                           
  %indvar76 = phi i32 [ 0, %bb.nph53 ], [ %indvar.next77, %while.cond.loopexit ] 
  br label %for.body

for.body:                                         
  %indvar = phi i64 [ 0, %bb.nph ], [ %indvar.next, %for.body ] 
  %tmp = add i64 %indvar, 2                       
  %arrayidx10 = getelementptr [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %tmp 
  store i8 1, i8* %arrayidx10
  %indvar.next = add i64 %indvar, 1               
  %exitcond = icmp eq i64 %indvar.next, 8191      
  br i1 %exitcond, label %for.body15, label %for.body

for.body15:                                       
  %indvar57 = phi i64 [ %indvar.next58, %for.inc35 ], [ 0, %for.body ] 
  %count.248 = phi i32 [ %count.1, %for.inc35 ], [ 0, %for.body ] 
  %tmp68 = add i64 %indvar57, 2                   
  %tmp70 = mul i64 %indvar57, 3                   
  %tmp71 = add i64 %tmp70, 6                      
  %tmp73 = shl i64 %indvar57, 1                   
  %add = add i64 %tmp73, 4                        
  %arrayidx17 = getelementptr [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %tmp68 
  %tmp18 = load i8, i8* %arrayidx17                   
  %tobool19 = icmp eq i8 %tmp18, 0                
  br i1 %tobool19, label %for.inc35, label %if.then

if.then:                                          
  %cmp2443 = icmp slt i64 %add, 8193              
  br i1 %cmp2443, label %for.body25, label %for.end32

for.body25:                                       
  %indvar55 = phi i64 [ %indvar.next56, %for.body25 ], [ 0, %if.then ] 
  %tmp60 = mul i64 %tmp68, %indvar55              
  %tmp75 = add i64 %add, %tmp60                   
  %arrayidx27 = getelementptr [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %tmp75 
  store i8 0, i8* %arrayidx27
  %add31 = add i64 %tmp71, %tmp60                 
  %cmp24 = icmp slt i64 %add31, 8193              
  %indvar.next56 = add i64 %indvar55, 1           
  br i1 %cmp24, label %for.body25, label %for.end32

for.end32:                                        
  %inc34 = add nsw i32 %count.248, 1              
  br label %for.inc35

for.inc35:                                        
  %count.1 = phi i32 [ %inc34, %for.end32 ], [ %count.248, %for.body15 ] 
  %indvar.next58 = add i64 %indvar57, 1           
  %exitcond67 = icmp eq i64 %indvar.next58, 8191  
  br i1 %exitcond67, label %while.cond.loopexit, label %for.body15

while.end:                                        
  %count.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %count.1, %while.cond.loopexit ] 
  %call40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %count.0.lcssa) nounwind 
  ret i32 0
}

declare i32 @atoi(i8* nocapture) nounwind readonly

declare i32 @printf(i8* nocapture, ...) nounwind
