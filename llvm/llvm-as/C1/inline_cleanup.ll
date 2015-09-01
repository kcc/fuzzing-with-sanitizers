




@A = weak global i32 0		
@B = weak global i32 0		
@C = weak global i32 0		

define internal fastcc void @foo(i32 %X) {
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

declare void @ext(i32*)

define void @test() {












entry:
	tail call fastcc void @foo( i32 1 )
	tail call fastcc void @foo( i32 2 )
	tail call fastcc void @foo( i32 3 )
	tail call fastcc void @foo( i32 8 )
	ret void
}

declare void @f(i32 %x)

define void @inner2(i32 %x, i32 %y, i32 %z, i1 %b) {
entry:
  %cmp1 = icmp ne i32 %x, 0
  br i1 %cmp1, label %then1, label %end1

then1:
  call void @f(i32 %x)
  br label %end1

end1:
  %x2 = and i32 %x, %z
  %cmp2 = icmp sgt i32 %x2, 1
  br i1 %cmp2, label %then2, label %end2

then2:
  call void @f(i32 %x2)
  br label %end2

end2:
  %y2 = or i32 %y, %z
  %cmp3 = icmp sgt i32 %y2, 0
  br i1 %cmp3, label %then3, label %end3

then3:
  call void @f(i32 %y2)
  br label %end3

end3:
  br i1 %b, label %end3.1, label %end3.2

end3.1:
  %x3.1 = or i32 %x, 10
  br label %end3.3

end3.2:
  %x3.2 = or i32 %x, 10
  br label %end3.3

end3.3:
  %x3.3 = phi i32 [ %x3.1, %end3.1 ], [ %x3.2, %end3.2 ]
  %cmp4 = icmp slt i32 %x3.3, 1
  br i1 %cmp4, label %then4, label %end4

then4:
  call void @f(i32 %x3.3)
  br label %end4

end4:
  ret void
}

define void @outer2(i32 %z, i1 %b) {






entry:
  call void @inner2(i32 0, i32 -1, i32 %z, i1 %b)
  ret void
}

define void @PR12470_inner(i16 signext %p1) nounwind uwtable {
entry:
  br i1 undef, label %cond.true, label %cond.false

cond.true:
  br label %cond.end

cond.false:
  %conv = sext i16 %p1 to i32
  br label %cond.end

cond.end:
  %cond = phi i32 [ undef, %cond.true ], [ 0, %cond.false ]
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:
  ret void

if.end5:
  ret void
}

define void @PR12470_outer() {









entry:
  call void @PR12470_inner(i16 signext 1)
  ret void
}

define void @crasher_inner() nounwind uwtable {
entry:
  br i1 false, label %for.end28, label %for.body6

for.body6:
  br i1 undef, label %for.body6, label %for.cond12.for.inc26_crit_edge

for.cond12.for.inc26_crit_edge:
  br label %for.body6.1

for.end28:
  ret void

for.body6.1:
  br i1 undef, label %for.body6.1, label %for.cond12.for.inc26_crit_edge.1

for.cond12.for.inc26_crit_edge.1:
  br label %for.body6.2

for.body6.2:
  br i1 undef, label %for.body6.2, label %for.cond12.for.inc26_crit_edge.2

for.cond12.for.inc26_crit_edge.2:
  br label %for.end28
}

define void @crasher_outer() {





entry:
  tail call void @crasher_inner()
  ret void
}
