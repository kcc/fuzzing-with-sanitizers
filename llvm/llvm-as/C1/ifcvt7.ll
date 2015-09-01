


	%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }

define fastcc i32 @CountTree(%struct.quad_struct* %tree) {



entry:
	br label %tailrecurse

tailrecurse:		
	%tmp6 = load %struct.quad_struct*, %struct.quad_struct** null		
	%tmp9 = load %struct.quad_struct*, %struct.quad_struct** null		
	%tmp12 = load %struct.quad_struct*, %struct.quad_struct** null		
	%tmp14 = icmp eq %struct.quad_struct* null, null		
	%tmp17 = icmp eq %struct.quad_struct* %tmp6, null		
	%tmp23 = icmp eq %struct.quad_struct* %tmp9, null		
	%tmp29 = icmp eq %struct.quad_struct* %tmp12, null		
	%bothcond = and i1 %tmp17, %tmp14		
	%bothcond1 = and i1 %bothcond, %tmp23		
	%bothcond2 = and i1 %bothcond1, %tmp29		
	br i1 %bothcond2, label %return, label %bb

bb:		
	%tmp41 = tail call fastcc i32 @CountTree( %struct.quad_struct* %tmp9 )		
	br label %tailrecurse

return:		
	ret i32 0
}
