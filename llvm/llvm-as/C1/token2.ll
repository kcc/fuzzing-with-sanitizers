

define void @f(token %A, token %B) {
entry:
  br label %bb

bb:
  %sel = select i1 undef, token %A, token %B

  br label %bb
}
