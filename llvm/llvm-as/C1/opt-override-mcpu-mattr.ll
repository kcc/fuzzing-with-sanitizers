






define i32 @foo1() #0 {
entry:
  ret i32 0
}

attributes #0 = { nounwind readnone ssp uwtable "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "use-soft-float"="false" }
