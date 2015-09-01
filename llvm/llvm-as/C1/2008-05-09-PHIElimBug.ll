

	%struct.V = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, float*, float*, float*, float*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

define fastcc void @t() nounwind  {
entry:
	br i1 false, label %bb23816.preheader, label %bb23821

bb23816.preheader:		
	%tmp23735 = and i32 0, 2		
	br label %bb23830

bb23821:		
	br i1 false, label %bb23830, label %bb23827

bb23827:		
	%tmp23829 = getelementptr %struct.V, %struct.V* null, i32 0, i32 42		
	br label %bb23830

bb23830:		
	%scaledInDst.2.reg2mem.5 = phi i8 [ undef, %bb23827 ], [ undef, %bb23821 ], [ undef, %bb23816.preheader ]		
	%toBool35047 = icmp eq i8 %scaledInDst.2.reg2mem.5, 0		
	%bothcond39107 = or i1 %toBool35047, false		
	unreachable
}
