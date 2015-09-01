



define void @t1(i8* %x) {
entry:


  br label %L0

L0:
  br label %L1

L1:
  indirectbr i8* %x, [ label %L0, label %L1 ]


}
