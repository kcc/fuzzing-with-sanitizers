


target datalayout = "E-p:32:32"
target triple = "powerpc-apple-darwin8.7.0"

define void @foo(i32 %W, i32 %X, i32 %Y, i32 %Z) {
entry:
	%tmp1 = and i32 %W, 1		
	%tmp1.upgrd.1 = icmp eq i32 %tmp1, 0		
	br i1 %tmp1.upgrd.1, label %cond_false, label %bb5
bb:		
	%indvar77 = phi i32 [ %indvar.next78, %bb ], [ 0, %bb5 ]		
	%tmp2 = tail call i32 (...) @bar( )		
	%indvar.next78 = add i32 %indvar77, 1		
	%exitcond79 = icmp eq i32 %indvar.next78, %X		
	br i1 %exitcond79, label %cond_next48, label %bb
bb5:		
	%tmp = icmp eq i32 %X, 0		
	br i1 %tmp, label %cond_next48, label %bb
cond_false:		
	%tmp10 = and i32 %W, 2		
	%tmp10.upgrd.2 = icmp eq i32 %tmp10, 0		
	br i1 %tmp10.upgrd.2, label %cond_false20, label %bb16
bb12:		
	%indvar72 = phi i32 [ %indvar.next73, %bb12 ], [ 0, %bb16 ]		
	%tmp13 = tail call i32 (...) @bar( )		
	%indvar.next73 = add i32 %indvar72, 1		
	%exitcond74 = icmp eq i32 %indvar.next73, %Y		
	br i1 %exitcond74, label %cond_next48, label %bb12
bb16:		
	%tmp18 = icmp eq i32 %Y, 0		
	br i1 %tmp18, label %cond_next48, label %bb12
cond_false20:		
	%tmp23 = and i32 %W, 4		
	%tmp23.upgrd.3 = icmp eq i32 %tmp23, 0		
	br i1 %tmp23.upgrd.3, label %cond_false33, label %bb29
bb25:		
	%indvar67 = phi i32 [ %indvar.next68, %bb25 ], [ 0, %bb29 ]		
	%tmp26 = tail call i32 (...) @bar( )		
	%indvar.next68 = add i32 %indvar67, 1		
	%exitcond69 = icmp eq i32 %indvar.next68, %Z		
	br i1 %exitcond69, label %cond_next48, label %bb25
bb29:		
	%tmp31 = icmp eq i32 %Z, 0		
	br i1 %tmp31, label %cond_next48, label %bb25
cond_false33:		
	%tmp36 = and i32 %W, 8		
	%tmp36.upgrd.4 = icmp eq i32 %tmp36, 0		
	br i1 %tmp36.upgrd.4, label %cond_next48, label %bb42
bb38:		
	%tmp39 = tail call i32 (...) @bar( )		
	%indvar.next = add i32 %indvar, 1		
	br label %bb42
bb42:		
	%indvar = phi i32 [ %indvar.next, %bb38 ], [ 0, %cond_false33 ]		
	%W_addr.0 = sub i32 %W, %indvar		
	%exitcond = icmp eq i32 %indvar, %W		
	br i1 %exitcond, label %cond_next48, label %bb38
cond_next48:		
	%W_addr.1 = phi i32 [ %W, %bb5 ], [ %W, %bb16 ], [ %W, %bb29 ], [ %W, %cond_false33 ], [ %W_addr.0, %bb42 ], [ %W, %bb25 ], [ %W, %bb12 ], [ %W, %bb ]		
	%tmp50 = icmp eq i32 %W_addr.1, 0		
	br i1 %tmp50, label %UnifiedReturnBlock, label %cond_true51
cond_true51:		
	%tmp52 = tail call i32 (...) @bar( )		
	ret void
UnifiedReturnBlock:		
	ret void
}

declare i32 @bar(...)
