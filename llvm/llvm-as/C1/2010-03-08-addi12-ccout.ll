

@.str41196 = external constant [2 x i8], align 4  

declare void @syStopraw(i32) nounwind

declare i32 @SyFopen(i8*, i8*) nounwind

declare i8* @SyFgets(i8*, i32) nounwind

define void @SyHelp(i8* nocapture %topic, i32 %fin) nounwind {
entry:
  %line = alloca [256 x i8], align 4              
  %secname = alloca [1024 x i8], align 4          
  %last = alloca [256 x i8], align 4              
  %last2 = alloca [256 x i8], align 4             
  br i1 undef, label %bb, label %bb2

bb:                                               
  br i1 undef, label %bb2, label %bb3

bb2:                                              
  br label %bb3

bb3:                                              
  %storemerge = phi i32 [ 0, %bb2 ], [ 1, %bb ]   
  br i1 undef, label %bb19, label %bb20

bb19:                                             
  br label %bb20

bb20:                                             
  br i1 undef, label %bb25, label %bb26

bb25:                                             
  br label %bb26

bb26:                                             
  %offset.2 = phi i32 [ -2, %bb25 ], [ 0, %bb20 ] 
  br i1 undef, label %bb.nph508, label %bb49

bb.nph508:                                        
  unreachable

bb49:                                             
  br i1 undef, label %bb51, label %bb50

bb50:                                             
  br i1 undef, label %bb51, label %bb104

bb51:                                             
  unreachable

bb104:                                            
  br i1 undef, label %bb106, label %bb105

bb105:                                            
  br i1 undef, label %bb106, label %bb161

bb106:                                            
  unreachable

bb161:                                            
  br i1 false, label %bb163, label %bb162

bb162:                                            
  br i1 undef, label %bb163, label %bb224

bb163:                                            
  unreachable

bb224:                                            
  %0 = call  i32 @SyFopen(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str41196, i32 0, i32 0)) nounwind 
  br i1 false, label %bb297, label %bb300

bb297:                                            
  unreachable

bb300:                                            
  %1 = icmp eq i32 %offset.2, -1                  
  br label %bb440

bb307:                                            
  br label %bb308

bb308:                                            
  br i1 undef, label %bb309, label %isdigit1498.exit67

isdigit1498.exit67:                               
  br i1 undef, label %bb309, label %bb307

bb309:                                            
  br i1 undef, label %bb310, label %bb313

bb310:                                            
  br label %bb313

bb313:                                            
  br i1 false, label %bb318, label %bb317

bb317:                                            
  %2 = icmp sgt i8 undef, -1                      
  br i1 %2, label %bb.i.i73, label %bb1.i.i74

bb.i.i73:                                         
  br i1 false, label %bb318, label %bb329.outer

bb1.i.i74:                                        
  unreachable

bb318:                                            
  ret void

bb329.outer:                                      
  br i1 undef, label %bb333, label %bb329.us.us

bb329.us.us:                                      
  br i1 undef, label %bb333, label %bb329.us.us

bb333:                                            
  %match.0.lcssa = phi i32 [ undef, %bb329.us.us ], [ 2, %bb329.outer ] 
  br i1 undef, label %bb335, label %bb388

bb335:                                            
  %3 = and i1 undef, %1                           
  br i1 %3, label %bb339, label %bb348

bb339:                                            
  br i1 false, label %bb340, label %bb345

bb340:                                            
  br i1 undef, label %return, label %bb341

bb341:                                            
  ret void

bb345:                                            
  %4 = phi i8 [ %5, %bb345 ], [ undef, %bb339 ]   
  %indvar670 = phi i32 [ %tmp673, %bb345 ], [ 0, %bb339 ] 
  %tmp673 = add i32 %indvar670, 1                 
  %scevgep674 = getelementptr [256 x i8], [256 x i8]* %last, i32 0, i32 %tmp673 
  %5 = load i8, i8* %scevgep674, align 1              
  br i1 undef, label %bb347, label %bb345

bb347:                                            
  br label %bb348

bb348:                                            
  br i1 false, label %bb352, label %bb356

bb352:                                            
  unreachable

bb356:                                            
  br i1 undef, label %bb360, label %bb369

bb360:                                            
  br i1 false, label %bb361, label %bb366

bb361:                                            
  br i1 undef, label %return, label %bb362

bb362:                                            
  ret void

bb366:                                            
  %indvar662 = phi i32 [ %tmp665, %bb366 ], [ 0, %bb360 ] 
  %tmp665 = add i32 %indvar662, 1                 
  %scevgep666 = getelementptr [256 x i8], [256 x i8]* %last2, i32 0, i32 %tmp665 
  %6 = load i8, i8* %scevgep666, align 1              
  br i1 false, label %bb368, label %bb366

bb368:                                            
  br label %bb369

bb369:                                            
  br i1 undef, label %bb373, label %bb388

bb373:                                            
  %7 = call  i8* @SyFgets(i8* undef, i32 %0) nounwind 
  %8 = icmp eq i8* %7, null                       
  br i1 %8, label %bb375, label %bb383

bb375:                                            
  %9 = icmp eq i32 %storemerge, 0                 
  br i1 %9, label %return, label %bb376

bb376:                                            
  ret void

bb383:                                            
  %10 = load i8, i8* undef, align 1                   
  %cond1 = icmp eq i8 %10, 46                     
  br i1 %cond1, label %bb373, label %bb388

bb388:                                            
  %match.1140 = phi i32 [ %match.0.lcssa, %bb369 ], [ 0, %bb333 ], [ %match.0.lcssa, %bb383 ] 
  br label %bb391

bb390:                                            
  %indvar.next725 = add i32 %indvar724, 1         
  br label %bb391

bb391:                                            
  %indvar724 = phi i32 [ %indvar.next725, %bb390 ], [ 0, %bb388 ] 
  %11 = load i8, i8* undef, align 1                   
  br i1 false, label %bb395, label %bb392

bb392:                                            
  br i1 undef, label %bb390, label %isdigit1498.exit83

isdigit1498.exit83:                               
  br i1 undef, label %bb390, label %bb395

bb394:                                            
  br label %bb395

bb395:                                            
  %storemerge14.sum = add i32 %indvar724, undef   
  %p.26 = getelementptr [256 x i8], [256 x i8]* %line, i32 0, i32 %storemerge14.sum 
  br i1 undef, label %bb400, label %isdigit1498.exit87

isdigit1498.exit87:                               
  br i1 false, label %bb400, label %bb394

bb400:                                            
  br i1 undef, label %bb402, label %bb403

bb402:                                            
  %12 = getelementptr inbounds i8, i8* %p.26, i32 undef 
  br label %bb403

bb403:                                            
  %p.29 = phi i8* [ %12, %bb402 ], [ undef, %bb400 ] 
  br i1 undef, label %bb405, label %bb404

bb404:                                            
  br i1 undef, label %bb405, label %bb407

bb405:                                            
  br i1 undef, label %return, label %bb406

bb406:                                            
  call  void @syStopraw(i32 %fin) nounwind
  ret void

bb407:                                            
  %cond = icmp eq i32 %match.1140, 2              
  br i1 %cond, label %bb408, label %bb428

bb408:                                            
  unreachable

bb428:                                            
  br label %bb440

bb440:                                            
  %13 = call  i8* @SyFgets(i8* undef, i32 %0) nounwind 
  br i1 false, label %bb442, label %bb308

bb442:                                            
  unreachable

return:                                           
  ret void
}
