



target triple = "x86_64-apple-darwin10"

define void @foo() {
  br label %cond_true813.i

cond_true813.i:                                   
  br i1 false, label %cond_true818.i, label %cond_next1146.i

cond_true818.i:                                   
  br i1 false, label %recog_memoized.exit52, label %cond_next1146.i

recog_memoized.exit52:                            
  switch i32 0, label %bb886.i.preheader [
    i32 0, label %bb907.i
    i32 44, label %bb866.i
    i32 103, label %bb874.i
    i32 114, label %bb874.i
  ]

bb857.i:                                          
  %tmp862.i494.24 = phi i8* [ null, %bb866.i ], [ %tmp862.i494.26, %bb886.i ] 
  switch i32 0, label %bb886.i.preheader [
    i32 0, label %bb907.i
    i32 44, label %bb866.i
    i32 103, label %bb874.i
    i32 114, label %bb874.i
  ]

bb866.i.loopexit:                                 
  br label %bb866.i

bb866.i.loopexit31:                               
  br label %bb866.i

bb866.i:                                          
  br i1 false, label %bb907.i, label %bb857.i

bb874.i.preheader.loopexit:                       
  ret void

bb874.i:                                          
  switch i32 0, label %bb886.i.preheader.loopexit [
    i32 0, label %bb907.i
    i32 44, label %bb866.i.loopexit
    i32 103, label %bb874.i.backedge
    i32 114, label %bb874.i.backedge
  ]

bb874.i.backedge:                                 
  ret void

bb886.i.preheader.loopexit:                       
  ret void

bb886.i.preheader:                                
  %tmp862.i494.26 = phi i8* [ undef, %recog_memoized.exit52 ], [ %tmp862.i494.24, %bb857.i ] 
  br label %bb886.i

bb886.i:                                          
  br i1 false, label %bb857.i, label %cond_true903.i

cond_true903.i:                                   
  switch i32 0, label %bb886.i [
    i32 0, label %bb907.i
    i32 44, label %bb866.i.loopexit31
    i32 103, label %bb874.i.preheader.loopexit
    i32 114, label %bb874.i.preheader.loopexit
  ]

bb907.i:                                          
  br i1 false, label %cond_next1146.i, label %cond_true910.i

cond_true910.i:                                   
  ret void

cond_next1146.i:                                  
  ret void

bb2060.i:                                         
  br i1 false, label %cond_true2064.i, label %bb2067.i

cond_true2064.i:                                  
  unreachable

bb2067.i:                                         
  ret void

cond_next3473:                                    
  ret void

cond_next3521:                                    
  ret void
}
