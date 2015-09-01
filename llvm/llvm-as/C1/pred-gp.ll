



@d = external global i32
@c = common global i32 0, align 4


define i32 @test2(i8 zeroext %a, i8 zeroext %b) #0 {


entry:
  %cmp = icmp eq i8 %a, %b
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:
  %.pre = load i32, i32* @c, align 4
  br label %if.end

if.then:
  %0 = load i32, i32* @d, align 4
  store i32 %0, i32* @c, align 4
  br label %if.end

if.end:
  %1 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %0, %if.then ]
  ret i32 %1
}
