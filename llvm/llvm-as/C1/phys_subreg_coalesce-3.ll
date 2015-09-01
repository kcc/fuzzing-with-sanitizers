







define void @foo(i32* nocapture %quadrant, i32* nocapture %ptr, i32 %bbSize, i32 %bbStart, i32 %shifts) nounwind ssp {

entry:
  %j.03 = add i32 %bbSize, -1                     
  %0 = icmp sgt i32 %j.03, -1                     
  br i1 %0, label %bb.nph, label %return

bb.nph:                                           
  %tmp9 = add i32 %bbStart, %bbSize               
  %tmp10 = add i32 %tmp9, -1                      
  br label %bb

bb:                                               



  %indvar = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb ] 
  %j.06 = sub i32 %j.03, %indvar                  
  %tmp11 = sub i32 %tmp10, %indvar                
  %scevgep = getelementptr i32, i32* %ptr, i32 %tmp11  
  %1 = load i32, i32* %scevgep, align 4                
  %2 = ashr i32 %j.06, %shifts                    
  %3 = and i32 %2, 65535                          
  %4 = getelementptr inbounds i32, i32* %quadrant, i32 %1 
  store i32 %3, i32* %4, align 4
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, %bbSize   
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}
