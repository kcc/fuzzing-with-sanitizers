











declare void @foo() nounwind uwtable

define void @func(i32 %A) nounwind uwtable {

entry:
  %cmp11 = icmp eq i32 %A, 1
  br i1 %cmp11, label %if.then, label %if.else, !prof !0

if.then:
  call void @foo()

  br label %if.else

if.else:
  %cmp17 = icmp eq i32 %A, 2
  br i1 %cmp17, label %if.then2, label %if.end

if.then2:
  br label %if.end

if.end:
  ret void
}

!0 = !{!"branch_weights", i32 1, i32 0}
