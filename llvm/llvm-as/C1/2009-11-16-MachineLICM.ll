


@g = common global [4 x float] zeroinitializer, align 16 

define void @foo(i32 %n, float* nocapture %x) nounwind ssp {
entry:

  %0 = icmp sgt i32 %n, 0                         
  br i1 %0, label %bb.nph, label %return

bb.nph:                                           

  %tmp = zext i32 %n to i64                       
  br label %bb

bb:                                               

  %indvar = phi i64 [ 0, %bb.nph ], [ %indvar.next, %bb ] 
  %tmp9 = shl i64 %indvar, 2                      
  %tmp1016 = or i64 %tmp9, 1                      
  %scevgep = getelementptr float, float* %x, i64 %tmp1016 
  %tmp1117 = or i64 %tmp9, 2                      
  %scevgep12 = getelementptr float, float* %x, i64 %tmp1117 
  %tmp1318 = or i64 %tmp9, 3                      
  %scevgep14 = getelementptr float, float* %x, i64 %tmp1318 
  %x_addr.03 = getelementptr float, float* %x, i64 %tmp9 
  %1 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @g, i64 0, i64 0), align 16 
  store float %1, float* %x_addr.03, align 4
  %2 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @g, i64 0, i64 1), align 4 
  store float %2, float* %scevgep, align 4
  %3 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @g, i64 0, i64 2), align 8 
  store float %3, float* %scevgep12, align 4
  %4 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @g, i64 0, i64 3), align 4 
  store float %4, float* %scevgep14, align 4
  %indvar.next = add i64 %indvar, 1               
  %exitcond = icmp eq i64 %indvar.next, %tmp      
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}
