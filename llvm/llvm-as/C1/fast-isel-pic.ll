





@g = global i32 0, align 4

define i32 @LoadGV() {
entry:





















  %tmp = load i32, i32* @g
  ret i32 %tmp
}

@i = external global i32

define i32 @LoadIndirectSymbol() {
entry:























  %tmp = load i32, i32* @i
  ret i32 %tmp
}
