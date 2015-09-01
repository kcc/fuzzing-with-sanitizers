


target datalayout = "n8:16:32:64"


define i64 @test(i64* nocapture %first, i32 %count) nounwind readonly {
entry:
	%t0 = icmp sgt i32 %count, 0		
	br i1 %t0, label %bb.nph, label %bb2

bb.nph:		
	br label %bb

bb:		
	%result.02 = phi i64 [ %t5, %bb1 ], [ 0, %bb.nph ]		
	%n.01 = phi i32 [ %t6, %bb1 ], [ 0, %bb.nph ]		
	%t1 = sext i32 %n.01 to i64		
	%t2 = getelementptr i64, i64* %first, i64 %t1		
	%t3 = load i64, i64* %t2, align 8		
	%t4 = lshr i64 %t3, 4		
	%t5 = add i64 %t4, %result.02		
	%t6 = add i32 %n.01, 1		
	br label %bb1

bb1:		
	%t7 = icmp slt i32 %t6, %count		
	br i1 %t7, label %bb, label %bb1.bb2_crit_edge

bb1.bb2_crit_edge:		
	%.lcssa = phi i64 [ %t5, %bb1 ]		
	br label %bb2

bb2:		
	%result.0.lcssa = phi i64 [ %.lcssa, %bb1.bb2_crit_edge ], [ 0, %entry ]		
	ret i64 %result.0.lcssa
}

define void @foo(i16 signext %N, i32* nocapture %P) nounwind {
entry:
	%t0 = icmp sgt i16 %N, 0		
	br i1 %t0, label %bb.nph, label %return

bb.nph:		
	br label %bb

bb:		
	%i.01 = phi i16 [ %t3, %bb1 ], [ 0, %bb.nph ]		
	%t1 = sext i16 %i.01 to i64		
	%t2 = getelementptr i32, i32* %P, i64 %t1		
	store i32 123, i32* %t2, align 4
	%t3 = add i16 %i.01, 1		
	br label %bb1

bb1:		
	%t4 = icmp slt i16 %t3, %N		
	br i1 %t4, label %bb, label %bb1.return_crit_edge

bb1.return_crit_edge:		
	br label %return

return:		
	ret void
}



define void @kinds__srangezero([21 x i32]* nocapture %a) nounwind {
bb.thread:
  br label %bb

bb:             
  %i.0.reg2mem.0 = phi i8 [ -10, %bb.thread ], [ %tmp7, %bb ]           
  %tmp12 = sext i8 %i.0.reg2mem.0 to i32                
  %tmp4 = add i32 %tmp12, 10            
  %tmp5 = getelementptr [21 x i32], [21 x i32]* %a, i32 0, i32 %tmp4                
  store i32 0, i32* %tmp5
  %tmp7 = add i8 %i.0.reg2mem.0, 1              
  %0 = icmp sgt i8 %tmp7, 10            
  br i1 %0, label %return, label %bb

return:         
  ret void
}

define void @kinds__urangezero([21 x i32]* nocapture %a) nounwind {
bb.thread:
  br label %bb

bb:             
  %i.0.reg2mem.0 = phi i8 [ 10, %bb.thread ], [ %tmp7, %bb ]            
  %tmp12 = sext i8 %i.0.reg2mem.0 to i32                
  %tmp4 = add i32 %tmp12, -10           
  %tmp5 = getelementptr [21 x i32], [21 x i32]* %a, i32 0, i32 %tmp4                
  store i32 0, i32* %tmp5
  %tmp7 = add i8 %i.0.reg2mem.0, 1              
  %0 = icmp sgt i8 %tmp7, 30            
  br i1 %0, label %return, label %bb

return:         
  ret void
}
