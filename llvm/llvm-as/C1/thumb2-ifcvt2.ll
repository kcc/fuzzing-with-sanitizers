



define void @foo(i32 %X, i32 %Y) {
entry:





	%tmp1 = icmp ult i32 %X, 4		
	%tmp4 = icmp eq i32 %Y, 0		
	%tmp7 = or i1 %tmp4, %tmp1		
	br i1 %tmp7, label %cond_true, label %UnifiedReturnBlock

cond_true:		
	%tmp10 = call i32 (...) @bar( )		
	ret void

UnifiedReturnBlock:		
	ret void
}

declare i32 @bar(...)



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

	%struct.SString = type { i8*, i32, i32 }

declare void @abort()

define fastcc void @t1(%struct.SString* %word, i8 signext  %c) {
entry:



	%tmp1 = icmp eq %struct.SString* %word, null		
	br i1 %tmp1, label %cond_true, label %cond_false

cond_true:		
	tail call void @abort( )
	unreachable

cond_false:		
	ret void
}

define fastcc void @t2() nounwind {
entry:



	br i1 undef, label %bb.i.i3, label %growMapping.exit

bb.i.i3:		
	unreachable

growMapping.exit:		
	unreachable
}
