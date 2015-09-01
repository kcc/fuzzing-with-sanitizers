


define void @snrm2(i32 %incx) {
entry:
	br i1 false, label %START, label %return

START:		
	br i1 false, label %bb85, label %cond_false93

bb52:		
	br i1 false, label %bb307, label %cond_next71

cond_next71:		
	ret void

bb85:		
	br i1 false, label %bb52, label %bb88

bb88:		
	ret void

cond_false93:		
	ret void

bb243:		
	br label %bb307

bb307:		
	%sx_addr.2.pn = phi float* [ %sx_addr.5, %bb243 ], [ null, %bb52 ]		
	%sx_addr.5 = getelementptr float, float* %sx_addr.2.pn, i32 %incx		
	br i1 false, label %bb243, label %bb310

bb310:		
	ret void

return:		
	ret void
}
