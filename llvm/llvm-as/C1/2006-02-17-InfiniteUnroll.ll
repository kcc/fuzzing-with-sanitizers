

define void @polnel_() {
entry:
	%tmp595 = icmp slt i32 0, 0		
	br i1 %tmp595, label %bb148.critedge, label %cond_true40
bb36:		
	br i1 %tmp595, label %bb43, label %cond_true40
cond_true40:		
	%tmp397 = icmp sgt i32 0, 0		
	br i1 %tmp397, label %bb43, label %cond_true40
bb43:		
	br i1 false, label %bb53, label %bb36
bb46:		
	br i1 %tmp595, label %bb53, label %cond_true40
bb53:		
	br i1 false, label %bb102, label %bb46
bb92.preheader:		
	ret void
bb102:		
	br i1 %tmp595, label %bb148, label %bb92.preheader
bb148.critedge:		
	ret void
bb148:		
	ret void
}

