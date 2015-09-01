


define i64 @addi64(i64 %a, i64 %b) nounwind {
entry:






  %add = add i64 %a, %b
  %and = and i64 %add, 255
  ret i64 %and
}

define i64 @mul(i64 %a, i64 %b) nounwind {
entry:






  %res = mul i64 %a, %b
  ret i64 %res
}

define i64 @cmpeq(i64 %a, i64 %b) nounwind {
entry:








  %res = icmp eq i64 %a, %b
  %res2 = zext i1 %res to i64
  ret i64 %res2
}

define i64 @cmpeqi(i64 %a) nounwind {
entry:









  %res = icmp eq i64 %a, 42
  %res2 = zext i1 %res to i64
  ret i64 %res2
}

define i64 @cmpne(i64 %a, i64 %b) nounwind {
entry:








  %res = icmp ne i64 %a, %b
  %res2 = zext i1 %res to i64
  ret i64 %res2
}

define i64 @cmpnei(i64 %a) nounwind {
entry:









  %res = icmp ne i64 %a, 42
  %res2 = zext i1 %res to i64
  ret i64 %res2
}

define i64 @bbit0(i64 %a) nounwind {
entry:




  %bit = and i64 %a, 8
  %res = icmp eq i64 %bit, 0
  br i1 %res, label %endif, label %if
if:
  ret i64 48

endif:
  ret i64 12
}

define i64 @bbit032(i64 %a) nounwind {
entry:






  %bit = and i64 %a, 34359738368
  %res = icmp eq i64 %bit, 0
  br i1 %res, label %endif, label %if
if:
  ret i64 48

endif:
  ret i64 12
}

define i64 @bbit1(i64 %a) nounwind {
entry:




  %bit = and i64 %a, 8
  %res = icmp ne i64 %bit, 0
  br i1 %res, label %endif, label %if
if:
  ret i64 48

endif:
  ret i64 12
}

define i64 @bbit132(i64 %a) nounwind {
entry:






  %bit = and i64 %a, 34359738368
  %res = icmp ne i64 %bit, 0
  br i1 %res, label %endif, label %if
if:
  ret i64 48

endif:
  ret i64 12
}
