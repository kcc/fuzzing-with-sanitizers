









define i32 @select_mask(i8* %this) {
entry:
  %bf.load2 = load i8, i8* %this, align 4
  %bf.cast5 = trunc i8 %bf.load2 to i1
  %cond = select i1 %bf.cast5, i32 2, i32 0
  ret i32 %cond
}
