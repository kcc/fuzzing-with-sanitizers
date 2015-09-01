

@A = weak global i32 0		
@B = weak global i32 0		
@C = weak global i32 0		

define fastcc void @foo(i32 %X) {
entry:

	%ALL = alloca i32, align 4		
	%tmp1 = and i32 %X, 1		
	%tmp1.upgrd.1 = icmp eq i32 %tmp1, 0		
	br i1 %tmp1.upgrd.1, label %cond_next, label %cond_true

cond_true:		
	store i32 1, i32* @A
	br label %cond_next

cond_next:		
	%tmp4 = and i32 %X, 2		
	%tmp4.upgrd.2 = icmp eq i32 %tmp4, 0		
	br i1 %tmp4.upgrd.2, label %cond_next7, label %cond_true5

cond_true5:		
	store i32 1, i32* @B
	br label %cond_next7

cond_next7:		
	%tmp10 = and i32 %X, 4		
	%tmp10.upgrd.3 = icmp eq i32 %tmp10, 0		
	br i1 %tmp10.upgrd.3, label %cond_next13, label %cond_true11

cond_true11:		
	store i32 1, i32* @C
	br label %cond_next13

cond_next13:		
	%tmp16 = and i32 %X, 8		
	%tmp16.upgrd.4 = icmp eq i32 %tmp16, 0		
	br i1 %tmp16.upgrd.4, label %UnifiedReturnBlock, label %cond_true17

cond_true17:		
	call void @ext( i32* %ALL )
	ret void

UnifiedReturnBlock:		
	ret void
}


define internal fastcc void @bar(i32 %X) {
entry:
	%ALL = alloca i32, align 4		
	%tmp1 = and i32 %X, 1		
	%tmp1.upgrd.1 = icmp eq i32 %tmp1, 0		
	br i1 %tmp1.upgrd.1, label %cond_next, label %cond_true

cond_true:		
	store i32 1, i32* @A
	br label %cond_next

cond_next:		
	%tmp4 = and i32 %X, 2		
	%tmp4.upgrd.2 = icmp eq i32 %tmp4, 0		
	br i1 %tmp4.upgrd.2, label %cond_next7, label %cond_true5

cond_true5:		
	store i32 1, i32* @B
	br label %cond_next7

cond_next7:		
	%tmp10 = and i32 %X, 4		
	%tmp10.upgrd.3 = icmp eq i32 %tmp10, 0		
	br i1 %tmp10.upgrd.3, label %cond_next13, label %cond_true11

cond_true11:		
	store i32 1, i32* @C
	br label %cond_next13

cond_next13:		
	%tmp16 = and i32 %X, 8		
	%tmp16.upgrd.4 = icmp eq i32 %tmp16, 0		
	br i1 %tmp16.upgrd.4, label %UnifiedReturnBlock, label %cond_true17

cond_true17:		
	call void @foo( i32 %X )
	ret void

UnifiedReturnBlock:		
	ret void
}

define internal fastcc void @bar2(i32 %X) {
entry:
	call void @foo( i32 %X )
	ret void
}

declare void @ext(i32*)

define void @test(i32 %X) {
entry:


	tail call fastcc void @bar( i32 %X )
	tail call fastcc void @bar( i32 %X )
	tail call fastcc void @bar2( i32 %X )
	tail call fastcc void @bar2( i32 %X )
	ret void

}
