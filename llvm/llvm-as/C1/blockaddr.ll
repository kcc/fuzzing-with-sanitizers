








@reg = common global i8* null, align 4

define i8* @dummy(i8* %x) nounwind readnone noinline {
entry:
  ret i8* %x
}

































define void @f() nounwind {
entry:
  %call = tail call i8* @dummy(i8* blockaddress(@f, %baz))
  indirectbr i8* %call, [label %baz, label %foo]

foo:                                              
  store i8* blockaddress(@f, %foo), i8** @reg, align 4
  br label %foo

baz:                                              
  store i8* null, i8** @reg, align 4
  ret void
}
