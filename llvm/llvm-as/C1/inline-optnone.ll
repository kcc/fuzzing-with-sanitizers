






define i32 @alwaysInlineFunction(i32 %a) #0 {
entry:
  %mul = mul i32 %a, %a
  ret i32 %mul
}


define i32 @simpleFunction(i32 %a) #1 {
entry:
  %add = add i32 %a, %a
  ret i32 %add
}


define i32 @OptnoneFunction(i32 %a) #2 {
entry:
  %0 = tail call i32 @alwaysInlineFunction(i32 %a)
  %1 = tail call i32 @simpleFunction(i32 %a)
  %add = add i32 %0, %1
  ret i32 %add
}







define i32 @bar(i32 %a) #1 {
entry:
  %0 = tail call i32 @OptnoneFunction(i32 5)
  %1 = tail call i32 @simpleFunction(i32 6)
  %add = add i32 %0, %1
  ret i32 %add
}







attributes #0 = { alwaysinline nounwind readnone uwtable }
attributes #1 = { nounwind readnone uwtable }
attributes #2 = { nounwind noinline optnone readnone uwtable }
