




















target datalayout = "e-p:64:64:64-p1:16:16:16-n16:32:64"

define void @foo(i64 %n, i64 %m, i64 %o, i64 %q, double addrspace(1)* nocapture %p) nounwind {
entry:
	%tmp = icmp sgt i64 %n, 0		
	br i1 %tmp, label %bb.nph3, label %return

bb.nph:		
	%tmp1 = mul i64 %tmp16, %i.02		
	%tmp2 = mul i64 %tmp19, %i.02		
	br label %bb1

bb1:		
	%j.01 = phi i64 [ %tmp9, %bb2 ], [ 0, %bb.nph ]		
	%tmp3 = add i64 %j.01, %tmp1		
	%tmp4 = add i64 %j.01, %tmp2		
        %z0 = add i64 %tmp3, 5203
	%tmp5 = getelementptr double, double addrspace(1)* %p, i64 %z0		
	%tmp6 = load double, double addrspace(1)* %tmp5, align 8		
	%tmp7 = fdiv double %tmp6, 2.100000e+00		
        %z1 = add i64 %tmp4, 5203
	%tmp8 = getelementptr double, double addrspace(1)* %p, i64 %z1		
	store double %tmp7, double addrspace(1)* %tmp8, align 8
	%tmp9 = add i64 %j.01, 1		
	br label %bb2

bb2:		
	%tmp10 = icmp slt i64 %tmp9, %m		
	br i1 %tmp10, label %bb1, label %bb2.bb3_crit_edge

bb2.bb3_crit_edge:		
	br label %bb3

bb3:		
	%tmp11 = add i64 %i.02, 1		
	br label %bb4

bb4:		
	%tmp12 = icmp slt i64 %tmp11, %n		
	br i1 %tmp12, label %bb2.preheader, label %bb4.return_crit_edge

bb4.return_crit_edge:		
	br label %bb4.return_crit_edge.split

bb4.return_crit_edge.split:		
	br label %return

bb.nph3:		
	%tmp13 = icmp sgt i64 %m, 0		
	%tmp14 = mul i64 %n, 37		
	%tmp15 = mul i64 %tmp14, %o		
	%tmp16 = mul i64 %tmp15, %q		
	%tmp17 = mul i64 %n, 37		
	%tmp18 = mul i64 %tmp17, %o		
	%tmp19 = mul i64 %tmp18, %q		
	br i1 %tmp13, label %bb.nph3.split, label %bb4.return_crit_edge.split

bb.nph3.split:		
	br label %bb2.preheader

bb2.preheader:		
	%i.02 = phi i64 [ %tmp11, %bb4 ], [ 0, %bb.nph3.split ]		
	br i1 true, label %bb.nph, label %bb3

return:		
	ret void
}
