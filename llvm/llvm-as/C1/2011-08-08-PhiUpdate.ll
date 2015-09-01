


declare i1 @check() nounwind






define void @test1(i32 %i, i32 %j) nounwind uwtable ssp {
entry:
  %cond1 = call zeroext i1 @check()
  br i1 %cond1, label %if.then, label %if.else.lr.ph

if.else.lr.ph:                                    
  br label %if.else

if.else:                                          
  %sub = phi i32 [ %i, %if.else.lr.ph ], [ %sub5, %if.else ]
  %sub5 = sub i32 %sub, %j
  %cond2 = call zeroext i1 @check()
  br i1 %cond2, label %if.then, label %if.else

if.then:                                          
  %i.tr = phi i32 [ %i, %entry ], [ %sub5, %if.else ]
  ret void

}







define i32 @test2(i32* nocapture %p, i32 %n) nounwind readonly {
entry:
  %0 = icmp sgt i32 %n, 0                         
  br i1 %0, label %bb.nph, label %bb2

bb.nph:                                           
  %tmp = zext i32 %n to i64                       
  br label %bb

bb:                                               
  %indvar = phi i64 [ 0, %bb.nph ], [ %indvar.next, %bb1 ] 
  %s.01 = phi i32 [ 0, %bb.nph ], [ %2, %bb1 ]    
  %scevgep = getelementptr i32, i32* %p, i64 %indvar   
  %1 = load i32, i32* %scevgep, align 1                
  %2 = add nsw i32 %1, %s.01                      
  br label %bb1

bb1:                                              
  %indvar.next = add i64 %indvar, 1               
  %exitcond = icmp ne i64 %indvar.next, %tmp      
  br i1 %exitcond, label %bb, label %bb1.bb2_crit_edge

bb1.bb2_crit_edge:                                
  %.lcssa = phi i32 [ %2, %bb1 ]                  
  br label %bb2

bb2:                                              
  %s.0.lcssa = phi i32 [ %.lcssa, %bb1.bb2_crit_edge ], [ 0, %entry ] 
  ret i32 %s.0.lcssa
}







define i32 @test3() nounwind uwtable ssp align 2 {
entry:
  %cond1 = call zeroext i1 @check()
  br i1 %cond1, label %return, label %if.end

if.end:                                           
  br label %do.body

do.body:                                          
  %cond2 = call zeroext i1 @check()
  br i1 %cond2, label %exit, label %do.cond

exit:                  
  %tmp7.i = load i32, i32* undef, align 8
  br i1 undef, label %do.cond, label %land.lhs.true

land.lhs.true:                                    
  br i1 undef, label %return, label %do.cond

do.cond:                                          
  %cond3 = call zeroext i1 @check()
  br i1 %cond3, label %do.end, label %do.body

do.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry ], [ %tmp7.i, %land.lhs.true ]
  ret i32 %retval.0
}
