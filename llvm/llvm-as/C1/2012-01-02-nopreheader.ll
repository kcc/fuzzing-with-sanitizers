




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-f128:128:128-n8:16:32"
target triple = "i386-apple-darwin"











define void @nopreheader(float* nocapture %a, i32 %n) nounwind {
entry:
  %0 = sdiv i32 %n, undef
  indirectbr i8* undef, [label %bb10.preheader]

bb10.preheader:                                   
  indirectbr i8* undef, [label %bb8.preheader.lr.ph, label %return]

bb8.preheader.lr.ph:                              
  indirectbr i8* null, [label %bb7.lr.ph.us, label %bb9]

bb7.lr.ph.us:                                     
  %i.12.us = phi i32 [ %2, %bb9.us ], [ 0, %bb8.preheader.lr.ph ]
  %tmp30 = mul i32 %0, %i.12.us
  indirectbr i8* undef, [label %bb7.us]

bb7.us:                                           
  %j.01.us = phi i32 [ 0, %bb7.lr.ph.us ], [ %1, %bb7.us ]
  %tmp31 = add i32 %tmp30, %j.01.us
  %scevgep9 = getelementptr float, float* %a, i32 %tmp31
  store float undef, float* %scevgep9, align 1
  %1 = add nsw i32 %j.01.us, 1
  indirectbr i8* undef, [label %bb9.us, label %bb7.us]

bb9.us:                                           
  %2 = add nsw i32 %i.12.us, 1
  indirectbr i8* undef, [label %bb7.lr.ph.us, label %return]

bb9:                                              
  indirectbr i8* undef, [label %bb9, label %return]

return:                                           
  ret void
}







define fastcc void @nopreheader2([200 x i32]* nocapture %Array2) nounwind {
entry:
  indirectbr i8* undef, [label %bb]

bb:                                               
  indirectbr i8* undef, [label %bb3, label %bb]

bb3:                                              
  indirectbr i8* undef, [label %bb8.preheader, label %bb3]

bb8.preheader:                                    
  %indvar5 = phi i32 [ %indvar.next6, %bb9 ], [ 0, %bb3 ]
  %tmp26 = add i32 %indvar5, 13
  indirectbr i8* null, [label %bb7]

bb7:                                              
  %indvar = phi i32 [ 0, %bb8.preheader ], [ %indvar.next, %bb7 ]
  %scevgep = getelementptr [200 x i32], [200 x i32]* %Array2, i32 %tmp26, i32 %indvar
  store i32 undef, i32* %scevgep, align 4
  %indvar.next = add i32 %indvar, 1
  indirectbr i8* undef, [label %bb9, label %bb7]

bb9:                                              
  %indvar.next6 = add i32 %indvar5, 1
  indirectbr i8* undef, [label %return, label %bb8.preheader]

return:                                           
  ret void
}
