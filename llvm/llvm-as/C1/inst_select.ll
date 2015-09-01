


define i32 @foo (i1 %a, i32 %b, i32 %c)
{
  %1 = select i1 %a, i32 %b, i32 %c
  ret i32 %1
}




