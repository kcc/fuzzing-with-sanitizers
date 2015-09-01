




declare i64 @foo()

define i64 @bar()
{
  %t = call i64 @foo()
  %s = add i64 %t, 1
  ret i64 %s
}
