


@c = common global i32 0, align 4

define i32 @test1(i32 %a, i32 %b) nounwind {


entry:
  %cmp = icmp slt i32 %a, 100
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:
  %.pre = load i32, i32* @c, align 4
  br label %if.end

if.then:
  %sub = add nsw i32 %a, -10
  store i32 %sub, i32* @c, align 4
  br label %if.end

if.end:
  %0 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  ret i32 %0
}

define i32 @test2(i32 %a, i32 %b) nounwind {


entry:
  %cmp = icmp sge i32 %a, %b
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:
  %.pre = load i32, i32* @c, align 4
  br label %if.end

if.then:
  %sub = add nsw i32 %a, -10
  store i32 %sub, i32* @c, align 4
  br label %if.end

if.end:
  %0 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  ret i32 %0
}

define i32 @test4(i32 %a, i32 %b) nounwind {


entry:
  %cmp = icmp uge i32 %a, %b
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:
  %.pre = load i32, i32* @c, align 4
  br label %if.end

if.then:
  %sub = add i32 %a, -10
  store i32 %sub, i32* @c, align 4
  br label %if.end

if.end:
  %0 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  ret i32 %0
}

define i32 @test5(i32 %a, i32 %b) nounwind {

entry:
  %cmp = icmp uge i32 %a, 29999
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:
  %.pre = load i32, i32* @c, align 4
  br label %if.end

if.then:
  %sub = add i32 %a, -10
  store i32 %sub, i32* @c, align 4
  br label %if.end

if.end:
  %0 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  ret i32 %0
}
