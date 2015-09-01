

@b = external global i32, align 4


define void @fn1() #0 {
entry:
  br label %for.cond1thread-pre-split

for.cond1thread-pre-split:                        
  %storemerge1 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  br i1 undef, label %for.inc8, label %for.cond2.preheader.lr.ph

for.cond2.preheader.lr.ph:                        
  br label %for.cond2.preheader

for.cond2.preheader:                              
  br label %for.cond2

for.cond2:                                        
  %storemerge = phi i32 [ %add, %for.body3 ], [ 0, %for.cond2.preheader ]
  %cmp = icmp slt i32 %storemerge, 1
  br i1 %cmp, label %for.body3, label %for.inc5

for.body3:                                        
  %tobool4 = icmp eq i32 %storemerge, 0
  %add = add nsw i32 %storemerge, 1
  br i1 %tobool4, label %for.cond2, label %if.then

if.then:                                          
  store i32 %storemerge1, i32* @b, align 4
  ret void

for.inc5:                                         
  br i1 undef, label %for.cond1.for.inc8_crit_edge, label %for.cond2.preheader

for.cond1.for.inc8_crit_edge:                     
  br label %for.inc8

for.inc8:                                         
  %inc9 = add nsw i32 %storemerge1, 1
  br label %for.cond1thread-pre-split
}
