

















define void @foo() {
entry:
  %0 = icmp eq i64 undef, 0
  br i1 %0, label %"5", label %"4"

"4":                                              
  unreachable

"5":                                              
  br label %"16"

"16":                                             
  indirectbr i8* undef, [label %"22", label %"33"]

"22":                                             
  br i1 %0, label %"16", label %"26"

"26":                                             
  unreachable

"33":                                             
  unreachable
}
