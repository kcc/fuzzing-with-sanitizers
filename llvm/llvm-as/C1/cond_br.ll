
@y = external global i32
@z = external global i32


define void @foo(i32 %x) {




  %t = sub i32 %x, %x
  %.pre = load i32, i32* @y, align 4
  %cmp = icmp sgt i32 %t, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           
  br label %if.end

if.then:                                          
  %add = add nsw i32 %x, 3
  store i32 %add, i32* @y, align 4
  br label %if.end

if.end:                                           
  %1 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %add, %if.then ]
  tail call void @bar(i32 %1)
  ret void
}

define void @foo2(i32 %x) {



entry:
  %t = sub i32 %x, %x
  %.pre = load i32, i32* @y, align 4
  %cmp = icmp sgt i32 %t, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %add = add nsw i32 %x, 3
  store i32 %add, i32* @y, align 4
  br label %if.end

if.else:                                          
  store i32 1, i32* @z, align 4
  br label %if.end

if.end:                                           
  %0 = phi i32 [ %.pre, %if.else ], [ %add, %if.then ]
  tail call void @bar(i32 %0)
  ret void
}

declare void @bar(i32)
