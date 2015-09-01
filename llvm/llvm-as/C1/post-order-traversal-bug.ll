








define void @test(float* nocapture %out, i32 %K1, float* nocapture readonly %nr) {



entry:
  br label %for.body



for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.be, %for.body.backedge ], [ 1, %entry ]
  %best_val.027 = phi float [ %best_val.027.be, %for.body.backedge ], [ 5.000000e+01, %entry ]
  %prev_start.026 = phi i32 [ %tmp26, %for.body.backedge ], [ 0, %entry ]
  %best_count.025 = phi i32 [ %best_count.025.be, %for.body.backedge ], [ 0, %entry ]
  %tmp0 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp eq i32 %tmp0, %K1
  br i1 %cmp1, label %if.then, label %lor.lhs.false



lor.lhs.false:                                    
  %arrayidx = getelementptr inbounds float, float* %nr, i64 %indvars.iv
  %tmp1 = load float, float* %arrayidx, align 4
  %tmp2 = add nsw i64 %indvars.iv, -1
  %arrayidx2 = getelementptr inbounds float, float* %nr, i64 %tmp2
  %tmp3 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp une float %tmp1, %tmp3
  br i1 %cmp3, label %if.then, label %for.body.1






if.then:                                          
  %sub4 = sub nsw i32 %tmp0, %prev_start.026
  %tmp4 = add nsw i64 %indvars.iv, -1
  %arrayidx8 = getelementptr inbounds float, float* %nr, i64 %tmp4
  %tmp5 = load float, float* %arrayidx8, align 4
  br i1 %cmp1, label %for.end, label %for.body.1



for.end:                                          
  %best_val.0.lcssa = phi float [ %best_val.233, %for.body.1 ], [ %tmp5, %if.then ]
  store float %best_val.0.lcssa, float* %out, align 4
  ret void






for.body.1:                                       
  %best_val.233 = phi float [ %tmp5, %if.then ], [ %best_val.027, %lor.lhs.false ]
  %best_count.231 = phi i32 [ %sub4, %if.then ], [ %best_count.025, %lor.lhs.false ]
  %indvars.iv.next.454 = add nsw i64 %indvars.iv, 5
  %tmp22 = trunc i64 %indvars.iv.next.454 to i32
  %cmp1.5 = icmp eq i32 %tmp22, %K1
  br i1 %cmp1.5, label %for.end, label %for.body.6






for.body.6:                                       
  %indvars.iv.next.559 = add nsw i64 %indvars.iv, 6
  %tmp26 = trunc i64 %indvars.iv.next.559 to i32
  %sub4.6 = sub nsw i32 %tmp26, %tmp22
  %cmp5.6 = icmp slt i32 %best_count.231, %sub4.6
  br i1 %cmp5.6, label %if.then6.6, label %for.body.backedge



if.then6.6:                                       
  %arrayidx8.6 = getelementptr inbounds float, float* %nr, i64 %indvars.iv.next.454
  %tmp29 = load float, float* %arrayidx8.6, align 4
  br label %for.body.backedge






for.body.backedge:                                
  %best_val.027.be = phi float [ %tmp29, %if.then6.6 ], [ %best_val.233, %for.body.6 ]
  %best_count.025.be = phi i32 [ %sub4.6, %if.then6.6 ], [ %best_count.231, %for.body.6 ]
  %indvars.iv.be = add nsw i64 %indvars.iv, 7
  br label %for.body
}
