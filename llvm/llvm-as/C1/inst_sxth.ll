


define i32 @foo (i16 %a)
{
  %1 = sext i16 %a to i32
  ret i32 %1
}

