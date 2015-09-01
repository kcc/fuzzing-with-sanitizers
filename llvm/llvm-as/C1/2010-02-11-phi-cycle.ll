
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"

define i32 @test(i32 %n) nounwind {



entry:
  %0 = icmp eq i32 %n, 1                          
  br i1 %0, label %return, label %bb.nph

bb.nph:                                           
  %tmp = add i32 %n, -1                           
  br label %bb

bb:                                               
  %indvar = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb ] 
  %u.05 = phi i64 [ undef, %bb.nph ], [ %ins, %bb ] 
  %1 = tail call  i32 @f() nounwind    
  %tmp4 = zext i32 %1 to i64                      
  %mask = and i64 %u.05, -4294967296              
  %ins = or i64 %tmp4, %mask                      
  tail call  void @g(i64 %ins) nounwind
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, %tmp      
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret i32 undef
}

define i32 @test_dead_cycle(i32 %n) nounwind {




entry:
  %0 = icmp eq i32 %n, 1                          
  br i1 %0, label %return, label %bb.nph

bb.nph:                                           
  %tmp = add i32 %n, -1                           
  br label %bb

bb:                                               
  %indvar = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb2 ] 
  %u.17 = phi i64 [ undef, %bb.nph ], [ %u.0, %bb2 ] 
  %tmp9 = sub i32 %tmp, %indvar                   
  %1 = icmp sgt i32 %tmp9, 1                      
  br i1 %1, label %bb1, label %bb2

bb1:                                              
  %2 = tail call  i32 @f() nounwind    
  %tmp6 = zext i32 %2 to i64                      
  %mask = and i64 %u.17, -4294967296              
  %ins = or i64 %tmp6, %mask                      
  tail call  void @g(i64 %ins) nounwind
  br label %bb2

bb2:                                              




  %u.0 = phi i64 [ %ins, %bb1 ], [ %u.17, %bb ]   
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, %tmp      
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret i32 undef
}

declare i32 @f()

declare void @g(i64)
