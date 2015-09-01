

define void @f(token %A, token %B) {
entry:
  br label %bb

bb:
  %phi = phi token [ %A, %bb ], [ %B, %entry]

  br label %bb
}
