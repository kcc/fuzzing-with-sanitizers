

























































target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"

@.str3 = external unnamed_addr constant [59 x i8], align 1

define void @BZ2_compressBlock() nounwind ssp {
entry:
  br i1 undef, label %if.then68, label %if.end85

if.then68:                                        
  br label %for.body.i.i

for.body.i.i:                                     
  br i1 undef, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      
  br label %for.inc.i.i

for.inc.i.i:                                      
  br i1 undef, label %makeMaps_e.exit.i, label %for.body.i.i

makeMaps_e.exit.i:                                
  br i1 undef, label %for.cond19.preheader.i, label %for.cond.for.cond19.preheader_crit_edge.i

for.cond.for.cond19.preheader_crit_edge.i:        
  unreachable

for.cond19.preheader.i:                           
  br i1 undef, label %for.body25.lr.ph.i, label %for.cond33.preheader.i

for.body25.lr.ph.i:                               
  br label %for.body25.i

for.cond33.preheader.i:                           
  br i1 undef, label %if.then.i, label %if.end.i

for.body25.i:                                     
  br i1 undef, label %for.body25.i, label %for.cond33.preheader.i

if.then.i:                                        
  br label %if.end.i

if.end.i:                                         
  br i1 undef, label %for.inc27.us.5.i, label %for.end30.i

for.end30.i:                                      
  br i1 undef, label %if.end36.i, label %if.then35.i

if.then35.i:                                      
  unreachable

if.end36.i:                                       
  %sub83.i = add nsw i32 undef, 1
  br label %while.body.i188

for.cond182.preheader.i:                          
  br i1 undef, label %for.inc220.us.i, label %while.body300.preheader.i

while.body.i188:                                  
  %gs.0526.i = phi i32 [ 0, %if.end36.i ], [ %add177.i, %for.end173.i ]
  %or.cond514517.i = and i1 false, undef
  br i1 %or.cond514517.i, label %while.body85.i, label %if.end117.i

while.body85.i:                                   
  %aFreq.0518.i = phi i32 [ %add93.i, %while.body85.i ], [ 0, %while.body.i188 ]
  %inc87.i = add nsw i32 0, 1
  %tmp91.i = load i32, i32* undef, align 4
  %add93.i = add nsw i32 %tmp91.i, %aFreq.0518.i
  %or.cond514.i = and i1 undef, false
  br i1 %or.cond514.i, label %while.body85.i, label %while.end.i

while.end.i:                                      
  br i1 undef, label %land.lhs.true.i, label %if.end117.i

land.lhs.true.i:                                  
  br i1 undef, label %land.lhs.true103.i, label %if.end117.i

land.lhs.true103.i:                               
  br i1 undef, label %if.then108.i, label %if.end117.i

if.then108.i:                                     
  br label %if.end117.i

if.end117.i:                                      
  %aFreq.1.i = phi i32 [ %aFreq.0518.i, %if.then108.i ], [ %add93.i, %land.lhs.true103.i ], [ %add93.i, %land.lhs.true.i ], [ %add93.i, %while.end.i ], [ 0, %while.body.i188 ]
  %ge.1.i = phi i32 [ 0, %if.then108.i ], [ %inc87.i, %land.lhs.true103.i ], [ %inc87.i, %land.lhs.true.i ], [ %inc87.i, %while.end.i ], [ 0, %while.body.i188 ]
  br i1 undef, label %if.then122.i, label %for.cond138.preheader.i

if.then122.i:                                     
  call void (...) @fprintf(i32 undef, i32 %gs.0526.i, i32 %ge.1.i, i32 %aFreq.1.i, double undef) nounwind
  br label %for.cond138.preheader.i

for.cond138.preheader.i:                          
  br i1 undef, label %for.body143.lr.ph.i, label %for.end173.i

for.body143.lr.ph.i:                              
  br label %for.body143.i

for.body143.i:                                    
  br i1 undef, label %for.end173.i, label %for.body143.i

for.end173.i:                                     
  %add177.i = add nsw i32 %ge.1.i, 1
  %cmp73.i = icmp sgt i32 undef, 0
  br i1 %cmp73.i, label %while.body.i188, label %for.cond182.preheader.i

for.inc220.us.i:                                  
  unreachable

while.body300.preheader.i:                        
  br i1 undef, label %for.end335.i, label %while.end2742.i

for.end335.i:                                     
  br label %for.body2021.i

for.body2021.i:                                   
  br i1 undef, label %for.body2021.i, label %for.end2039.i

for.end2039.i:                                    
  br label %for.end335.i

while.end2742.i:                                  
  br i1 undef, label %if.then2748.i, label %for.body2778.i

if.then2748.i:                                    
  unreachable

for.body2778.i:                                   
  unreachable

for.inc27.us.5.i:                                 
  br label %for.end30.i

if.end85:                                         
  ret void
}

declare void @fprintf(...) nounwind
