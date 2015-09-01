













define i32 @br(i8 *%addr) {














entry:
  indirectbr i8* %addr, [label %L1, label %L2]

L1:
  ret i32 0

L2:
  ret i32 1
}
