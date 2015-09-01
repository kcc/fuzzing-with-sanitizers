
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define void @test1() nounwind uwtable ssp {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  br i1 false, label %for.end, label %for.body

for.end:                                          
  br i1 undef, label %for.end11, label %for.body3

for.body3:                                        
  unreachable

for.end11:                                        
  br i1 undef, label %while.body, label %while.end

while.body:                                       
  unreachable

while.end:                                        
  br i1 undef, label %if.end115, label %for.cond109

for.cond109:                                      
  unreachable

if.end115:                                        
  br i1 undef, label %while.body119.lr.ph.lr.ph, label %for.cond612

while.body119.lr.ph.lr.ph:                        
  br i1 undef, label %for.cond612, label %if.end123.us

if.end123.us:                                     
  br label %for.cond132.us

for.cond132.us:                                   
  br i1 undef, label %if.then136.us, label %for.cond132.us

if.then136.us:                                    
  br i1 undef, label %while.end220, label %while.body211

while.body211:                                    
  br i1 undef, label %while.end220, label %while.body211

while.end220:                                     
  br label %for.cond246.outer

for.cond246.outer:                                
  br label %for.cond246

for.cond246:                                      
  br i1 undef, label %for.end562, label %if.end250

if.end250:                                        
  br i1 undef, label %if.end256, label %for.end562

if.end256:                                        
  %cmp272 = icmp eq i32 undef, undef
  br i1 %cmp272, label %if.then274, label %for.cond404.preheader

for.cond404.preheader:                            
  br i1 undef, label %for.cond246.outer, label %for.body409.lr.ph

for.body409.lr.ph:                                
  br label %for.body409

if.then274:                                       
  br i1 undef, label %for.cond246.outer, label %if.end309

if.end309:                                        
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.body361:                                      
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.cond372.loopexit:                             
  br i1 undef, label %for.cond394.preheader, label %for.cond246

for.cond394.preheader:                            
  br i1 undef, label %for.cond246.outer, label %for.body397

for.body397:                                      
  unreachable

for.body409:                                      
  %k.029 = phi i32 [ 1, %for.body409.lr.ph ], [ %inc559, %for.inc558 ]
  br i1 undef, label %if.then412, label %if.else433

if.then412:                                       
  br label %if.end440

if.else433:                                       
  br label %if.end440

if.end440:                                        
  br i1 undef, label %for.inc558, label %if.end461

if.end461:                                        
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.body517:                                      
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.cond528.loopexit:                             
  br label %for.inc558

for.inc558:                                       
  %inc559 = add nsw i32 %k.029, 1
  %cmp407 = icmp sgt i32 %inc559, undef
  br i1 %cmp407, label %for.cond246.outer, label %for.body409

for.end562:                                       
  unreachable

for.cond612:                                      
  unreachable
}

define void @test2() nounwind uwtable ssp {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  br i1 undef, label %for.end, label %for.body

for.end:                                          
  br i1 undef, label %for.end11, label %for.body3

for.body3:                                        
  unreachable

for.end11:                                        
  br i1 undef, label %while.body, label %while.end

while.body:                                       
  unreachable

while.end:                                        
  br i1 undef, label %if.end115, label %for.cond109

for.cond109:                                      
  unreachable

if.end115:                                        
  br i1 undef, label %while.body119.lr.ph.lr.ph, label %for.cond612

while.body119.lr.ph.lr.ph:                        
  br i1 undef, label %for.cond612, label %if.end123.us

if.end123.us:                                     
  br label %for.cond132.us

for.cond132.us:                                   
  br i1 undef, label %if.then136.us, label %for.cond132.us

if.then136.us:                                    
  br i1 undef, label %while.end220, label %while.body211

while.body211:                                    
  br i1 undef, label %while.end220, label %while.body211

while.end220:                                     
  br label %for.cond246.outer

for.cond246.outer:                                
  br label %for.cond246

for.cond246:                                      
  br i1 undef, label %for.end562, label %if.end250

if.end250:                                        
  br i1 undef, label %if.end256, label %for.end562

if.end256:                                        
  %0 = load i32, i32* undef, align 4
  br i1 undef, label %if.then274, label %for.cond404.preheader

for.cond404.preheader:                            
  %add406 = add i32 0, %0
  br i1 undef, label %for.cond246.outer, label %for.body409.lr.ph

for.body409.lr.ph:                                
  br label %for.body409

if.then274:                                       
  br i1 undef, label %for.cond246.outer, label %if.end309

if.end309:                                        
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.body361:                                      
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.cond372.loopexit:                             
  br i1 undef, label %for.cond394.preheader, label %for.cond246

for.cond394.preheader:                            
  br i1 undef, label %for.cond246.outer, label %for.body397

for.body397:                                      
  unreachable

for.body409:                                      
  %k.029 = phi i32 [ 1, %for.body409.lr.ph ], [ %inc559, %for.inc558 ]
  br i1 undef, label %if.then412, label %if.else433

if.then412:                                       
  br label %if.end440

if.else433:                                       
  br label %if.end440

if.end440:                                        
  br i1 undef, label %for.inc558, label %if.end461

if.end461:                                        
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.body517:                                      
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.cond528.loopexit:                             
  br label %for.inc558

for.inc558:                                       
  %inc559 = add nsw i32 %k.029, 1
  %cmp407 = icmp sgt i32 %inc559, %add406
  br i1 %cmp407, label %for.cond246.outer, label %for.body409

for.end562:                                       
  unreachable

for.cond612:                                      
  unreachable
}

define void @test3() nounwind uwtable ssp {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  br i1 undef, label %for.end, label %for.body

for.end:                                          
  br i1 undef, label %for.end11, label %for.body3

for.body3:                                        
  unreachable

for.end11:                                        
  br i1 undef, label %while.body, label %while.end

while.body:                                       
  unreachable

while.end:                                        
  br i1 undef, label %if.end115, label %for.cond109

for.cond109:                                      
  unreachable

if.end115:                                        
  br i1 undef, label %while.body119.lr.ph.lr.ph, label %for.cond612

while.body119.lr.ph.lr.ph:                        
  br i1 undef, label %for.cond612, label %if.end123.us

if.end123.us:                                     
  br label %for.cond132.us

for.cond132.us:                                   
  br i1 undef, label %if.then136.us, label %for.cond132.us

if.then136.us:                                    
  br i1 undef, label %while.end220, label %while.body211

while.body211:                                    
  br i1 undef, label %while.end220, label %while.body211

while.end220:                                     
  br label %for.cond246.outer

for.cond246.outer:                                
  br label %for.cond246

for.cond246:                                      
  br i1 undef, label %for.end562, label %if.end250

if.end250:                                        
  br i1 undef, label %if.end256, label %for.end562

if.end256:                                        
  br i1 undef, label %if.then274, label %for.cond404.preheader

for.cond404.preheader:                            
  br i1 undef, label %for.cond246.outer, label %for.body409.lr.ph

for.body409.lr.ph:                                
  br label %for.body409

if.then274:                                       
  br i1 undef, label %for.cond246.outer, label %if.end309

if.end309:                                        
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.body361:                                      
  br i1 undef, label %for.cond372.loopexit, label %for.body361

for.cond372.loopexit:                             
  br i1 undef, label %for.cond394.preheader, label %for.cond246

for.cond394.preheader:                            
  br i1 undef, label %for.cond246.outer, label %for.body397

for.body397:                                      
  unreachable

for.body409:                                      
  br i1 undef, label %if.then412, label %if.else433

if.then412:                                       
  br label %if.end440

if.else433:                                       
  br label %if.end440

if.end440:                                        
  br i1 undef, label %for.inc558, label %if.end461

if.end461:                                        
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.body517:                                      
  br i1 undef, label %for.cond528.loopexit, label %for.body517

for.cond528.loopexit:                             
  br label %for.inc558

for.inc558:                                       
  br i1 undef, label %for.cond246.outer, label %for.body409

for.end562:                                       
  unreachable

for.cond612:                                      
  unreachable
}

define void @test4() nounwind uwtable ssp {
entry:
  br i1 undef, label %if.end8, label %if.else

if.else:                                          
  br label %if.end8

if.end8:                                          
  br i1 undef, label %if.end26, label %if.else22

if.else22:                                        
  br label %if.end26

if.end26:                                         
  br i1 undef, label %if.end35, label %if.else31

if.else31:                                        
  br label %if.end35

if.end35:                                         
  br i1 undef, label %for.end226, label %for.body.lr.ph

for.body.lr.ph:                                   
  br label %for.body48

for.body48:                                       
  br i1 undef, label %for.inc221, label %for.body65.lr.ph

for.body65.lr.ph:                                 
  %0 = load i32, i32* undef, align 4
  %1 = sext i32 %0 to i64
  br label %for.body65.us

for.body65.us:                                    
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc219.us ], [ 1, %for.body65.lr.ph ]
  br i1 undef, label %for.inc219.us, label %if.end72.us

if.end72.us:                                      
  br i1 undef, label %if.end93.us, label %if.then76.us

if.then76.us:                                     
  br label %if.end93.us

if.end93.us:                                      
  br i1 undef, label %if.end110.us, label %for.inc219.us

if.end110.us:                                     
  br i1 undef, label %for.inc219.us, label %for.body142.us

for.body142.us:                                   
  br label %for.cond152.us

for.cond152.us:                                   
  br i1 undef, label %for.cond139.loopexit.us, label %for.cond152.us

for.inc219.us:                                    
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp64.us = icmp sgt i64 %indvars.iv.next, %1
  br i1 %cmp64.us, label %for.inc221, label %for.body65.us

for.cond139.loopexit.us:                          
  br i1 undef, label %for.inc219.us, label %for.body142.us

for.inc221:                                       
  br label %for.body48

for.end226:                                       
  ret void
}
