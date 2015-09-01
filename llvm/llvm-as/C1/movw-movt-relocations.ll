





@i = common global i32 0, align 4
@j = common global i32 0, align 4


define i32 @relocation(i32 %j, i32 %k) {
entry:
  %0 = load i32, i32* @i, align 4
  %1 = load i32, i32* @j, align 4
  %add = add nsw i32 %1, %0
  ret i32 %add
}










